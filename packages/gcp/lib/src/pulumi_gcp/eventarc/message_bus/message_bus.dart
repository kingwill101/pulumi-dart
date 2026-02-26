import 'package:pulumi/pulumi.dart';
import '../message_bus_logging_config/message_bus_logging_config.dart';
import 'message_bus_args.dart';

/// The Eventarc MessageBus resource
///
///
/// To get more information about MessageBus, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.messageBuses)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/publish-events/create-bus)
///
/// ## Example Usage
///
/// ### Eventarc Message Bus With Cmek
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({
/// projectId: "my-project-name",
/// });
/// const testKeyRing = gcp.kms.getKMSKeyRing({
/// name: "keyring",
/// location: "us-central1",
/// });
/// const key = testKeyRing.then(testKeyRing => gcp.kms.getKMSCryptoKey({
/// name: "key",
/// keyRing: testKeyRing.id,
/// }));
/// const keyMember = new gcp.kms.CryptoKeyIAMMember("key_member", {
/// cryptoKeyId: key.then(key => key.id),
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: testProject.then(testProject => `serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com`),
/// });
/// const primary = new gcp.eventarc.MessageBus("primary", {
/// location: "us-central1",
/// messageBusId: "some-message-bus",
/// cryptoKeyName: key.then(key => key.id),
/// }, {
/// dependsOn: [keyMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project(project_id="my-project-name")
/// test_key_ring = gcp.kms.get_kms_key_ring(name="keyring",
/// location="us-central1")
/// key = gcp.kms.get_kms_crypto_key(name="key",
/// key_ring=test_key_ring.id)
/// key_member = gcp.kms.CryptoKeyIAMMember("key_member",
/// crypto_key_id=key.id,
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:service-{test_project.number}@gcp-sa-eventarc.iam.gserviceaccount.com")
/// primary = gcp.eventarc.MessageBus("primary",
/// location="us-central1",
/// message_bus_id="some-message-bus",
/// crypto_key_name=key.id,
/// opts = pulumi.ResourceOptions(depends_on=[key_member]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testProject = Gcp.Organizations.GetProject.Invoke(new()
/// {
/// ProjectId = "my-project-name",
/// });
///
/// var testKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
/// {
/// Name = "keyring",
/// Location = "us-central1",
/// });
///
/// var key = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
/// {
/// Name = "key",
/// KeyRing = testKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
/// });
///
/// var keyMember = new Gcp.Kms.CryptoKeyIAMMember("key_member", new()
/// {
/// CryptoKeyId = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:service-{testProject.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-eventarc.iam.gserviceaccount.com",
/// });
///
/// var primary = new Gcp.Eventarc.MessageBus("primary", new()
/// {
/// Location = "us-central1",
/// MessageBusId = "some-message-bus",
/// CryptoKeyName = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// keyMember,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// ProjectId: pulumi.StringRef("my-project-name"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// testKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// Name:     "keyring",
/// Location: "us-central1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// key, err := kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// Name:    "key",
/// KeyRing: testKeyRing.Id,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// keyMember, err := kms.NewCryptoKeyIAMMember(ctx, "key_member", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.Number),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = eventarc.NewMessageBus(ctx, "primary", &eventarc.MessageBusArgs{
/// Location:      pulumi.String("us-central1"),
/// MessageBusId:  pulumi.String("some-message-bus"),
/// CryptoKeyName: pulumi.String(key.Id),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// keyMember,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.eventarc.MessageBus;
/// import com.pulumi.gcp.eventarc.MessageBusArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .projectId("my-project-name")
/// .build());
///
/// final var testKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
/// .name("keyring")
/// .location("us-central1")
/// .build());
///
/// final var key = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
/// .name("key")
/// .keyRing(testKeyRing.id())
/// .build());
///
/// var keyMember = new CryptoKeyIAMMember("keyMember", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.number()))
/// .build());
///
/// var primary = new MessageBus("primary", MessageBusArgs.builder()
/// .location("us-central1")
/// .messageBusId("some-message-bus")
/// .cryptoKeyName(key.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(keyMember)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// keyMember:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: key_member
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com
/// primary:
/// type: gcp:eventarc:MessageBus
/// properties:
/// location: us-central1
/// messageBusId: some-message-bus
/// cryptoKeyName: ${key.id}
/// options:
/// dependsOn:
/// - ${keyMember}
/// variables:
/// testProject:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments:
/// projectId: my-project-name
/// testKeyRing:
/// fn::invoke:
/// function: gcp:kms:getKMSKeyRing
/// arguments:
/// name: keyring
/// location: us-central1
/// key:
/// fn::invoke:
/// function: gcp:kms:getKMSCryptoKey
/// arguments:
/// name: key
/// keyRing: ${testKeyRing.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// MessageBus can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/messageBuses/{{message_bus_id}}`
///
/// * `{{project}}/{{location}}/{{message_bus_id}}`
///
/// * `{{location}}/{{message_bus_id}}`
///
/// When using the `pulumi import` command, MessageBus can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default projects/{{project}}/locations/{{location}}/messageBuses/{{message_bus_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default {{project}}/{{location}}/{{message_bus_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default {{location}}/{{message_bus_id}}
/// ```
class MessageBus extends CustomResource {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. The creation time.
  late final Output<String> createTime;

  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final Output<String?> cryptoKeyName;

  /// Optional. Resource display name.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final Output<MessageBusLoggingConfig> loggingConfig;

  /// Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// format `^a-z?$`.
  late final Output<String> messageBusId;

  /// Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/messageBuses/{message_bus}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// Output only. The last-modified time.
  late final Output<String> updateTime;

  MessageBus(
    String name, {
    MessageBusArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/messageBus:MessageBus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>?>();
    this.createTime = Output.createUnknown<String>();
    this.cryptoKeyName = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveAnnotations = Output.createUnknown<Map<String, String>>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.loggingConfig = Output.createUnknown<MessageBusLoggingConfig>();
    this.messageBusId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
