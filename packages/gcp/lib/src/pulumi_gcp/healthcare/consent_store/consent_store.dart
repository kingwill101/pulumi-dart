import 'package:pulumi/pulumi.dart';
import 'consent_store_args.dart';

/// The Consent Management API is a tool for tracking user consents and the documentation associated with the consents.
///
///
/// To get more information about ConsentStore, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.consentStores)
/// * How-to Guides
/// * [Creating a Consent store](https://cloud.google.com/healthcare/docs/how-tos/consent)
///
/// ## Example Usage
///
/// ### Healthcare Consent Store Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// location: "us-central1",
/// name: "my-dataset",
/// });
/// const my_consent = new gcp.healthcare.ConsentStore("my-consent", {
/// dataset: dataset.id,
/// name: "my-consent-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// location="us-central1",
/// name="my-dataset")
/// my_consent = gcp.healthcare.ConsentStore("my-consent",
/// dataset=dataset.id,
/// name="my-consent-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Location = "us-central1",
/// Name = "my-dataset",
/// });
///
/// var my_consent = new Gcp.Healthcare.ConsentStore("my-consent", new()
/// {
/// Dataset = dataset.Id,
/// Name = "my-consent-store",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Location: pulumi.String("us-central1"),
/// Name:     pulumi.String("my-dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewConsentStore(ctx, "my-consent", &healthcare.ConsentStoreArgs{
/// Dataset: dataset.ID(),
/// Name:    pulumi.String("my-consent-store"),
/// })
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.ConsentStore;
/// import com.pulumi.gcp.healthcare.ConsentStoreArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .location("us-central1")
/// .name("my-dataset")
/// .build());
///
/// var my_consent = new ConsentStore("my-consent", ConsentStoreArgs.builder()
/// .dataset(dataset.id())
/// .name("my-consent-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// location: us-central1
/// name: my-dataset
/// my-consent:
/// type: gcp:healthcare:ConsentStore
/// properties:
/// dataset: ${dataset.id}
/// name: my-consent-store
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Consent Store Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// location: "us-central1",
/// name: "my-dataset",
/// });
/// const my_consent = new gcp.healthcare.ConsentStore("my-consent", {
/// dataset: dataset.id,
/// name: "my-consent-store",
/// enableConsentCreateOnUpdate: true,
/// defaultConsentTtl: "90000s",
/// labels: {
/// label1: "labelvalue1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// location="us-central1",
/// name="my-dataset")
/// my_consent = gcp.healthcare.ConsentStore("my-consent",
/// dataset=dataset.id,
/// name="my-consent-store",
/// enable_consent_create_on_update=True,
/// default_consent_ttl="90000s",
/// labels={
/// "label1": "labelvalue1",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Location = "us-central1",
/// Name = "my-dataset",
/// });
///
/// var my_consent = new Gcp.Healthcare.ConsentStore("my-consent", new()
/// {
/// Dataset = dataset.Id,
/// Name = "my-consent-store",
/// EnableConsentCreateOnUpdate = true,
/// DefaultConsentTtl = "90000s",
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Location: pulumi.String("us-central1"),
/// Name:     pulumi.String("my-dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewConsentStore(ctx, "my-consent", &healthcare.ConsentStoreArgs{
/// Dataset:                     dataset.ID(),
/// Name:                        pulumi.String("my-consent-store"),
/// EnableConsentCreateOnUpdate: pulumi.Bool(true),
/// DefaultConsentTtl:           pulumi.String("90000s"),
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
/// },
/// })
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.ConsentStore;
/// import com.pulumi.gcp.healthcare.ConsentStoreArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .location("us-central1")
/// .name("my-dataset")
/// .build());
///
/// var my_consent = new ConsentStore("my-consent", ConsentStoreArgs.builder()
/// .dataset(dataset.id())
/// .name("my-consent-store")
/// .enableConsentCreateOnUpdate(true)
/// .defaultConsentTtl("90000s")
/// .labels(Map.of("label1", "labelvalue1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// location: us-central1
/// name: my-dataset
/// my-consent:
/// type: gcp:healthcare:ConsentStore
/// properties:
/// dataset: ${dataset.id}
/// name: my-consent-store
/// enableConsentCreateOnUpdate: true
/// defaultConsentTtl: 90000s
/// labels:
/// label1: labelvalue1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Consent Store Iam
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// location: "us-central1",
/// name: "my-dataset",
/// });
/// const my_consent = new gcp.healthcare.ConsentStore("my-consent", {
/// dataset: dataset.id,
/// name: "my-consent-store",
/// });
/// const test_account = new gcp.serviceaccount.Account("test-account", {
/// accountId: "my-account",
/// displayName: "Test Service Account",
/// });
/// const test_iam = new gcp.healthcare.ConsentStoreIamMember("test-iam", {
/// dataset: dataset.id,
/// consentStoreId: my_consent.name,
/// role: "roles/editor",
/// member: pulumi.interpolate`serviceAccount:${test_account.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// location="us-central1",
/// name="my-dataset")
/// my_consent = gcp.healthcare.ConsentStore("my-consent",
/// dataset=dataset.id,
/// name="my-consent-store")
/// test_account = gcp.serviceaccount.Account("test-account",
/// account_id="my-account",
/// display_name="Test Service Account")
/// test_iam = gcp.healthcare.ConsentStoreIamMember("test-iam",
/// dataset=dataset.id,
/// consent_store_id=my_consent.name,
/// role="roles/editor",
/// member=test_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Location = "us-central1",
/// Name = "my-dataset",
/// });
///
/// var my_consent = new Gcp.Healthcare.ConsentStore("my-consent", new()
/// {
/// Dataset = dataset.Id,
/// Name = "my-consent-store",
/// });
///
/// var test_account = new Gcp.ServiceAccount.Account("test-account", new()
/// {
/// AccountId = "my-account",
/// DisplayName = "Test Service Account",
/// });
///
/// var test_iam = new Gcp.Healthcare.ConsentStoreIamMember("test-iam", new()
/// {
/// Dataset = dataset.Id,
/// ConsentStoreId = my_consent.Name,
/// Role = "roles/editor",
/// Member = test_account.Email.Apply(email => $"serviceAccount:{email}"),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Location: pulumi.String("us-central1"),
/// Name:     pulumi.String("my-dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// my_consent, err := healthcare.NewConsentStore(ctx, "my-consent", &healthcare.ConsentStoreArgs{
/// Dataset: dataset.ID(),
/// Name:    pulumi.String("my-consent-store"),
/// })
/// if err != nil {
/// return err
/// }
/// test_account, err := serviceaccount.NewAccount(ctx, "test-account", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("my-account"),
/// DisplayName: pulumi.String("Test Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewConsentStoreIamMember(ctx, "test-iam", &healthcare.ConsentStoreIamMemberArgs{
/// Dataset:        dataset.ID(),
/// ConsentStoreId: my_consent.Name,
/// Role:           pulumi.String("roles/editor"),
/// Member: test_account.Email.ApplyT(func(email string) (string, error) {
/// return fmt.Sprintf("serviceAccount:%v", email), nil
/// }).(pulumi.StringOutput),
/// })
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.ConsentStore;
/// import com.pulumi.gcp.healthcare.ConsentStoreArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMember;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMemberArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .location("us-central1")
/// .name("my-dataset")
/// .build());
///
/// var my_consent = new ConsentStore("my-consent", ConsentStoreArgs.builder()
/// .dataset(dataset.id())
/// .name("my-consent-store")
/// .build());
///
/// var test_account = new Account("test-account", AccountArgs.builder()
/// .accountId("my-account")
/// .displayName("Test Service Account")
/// .build());
///
/// var test_iam = new ConsentStoreIamMember("test-iam", ConsentStoreIamMemberArgs.builder()
/// .dataset(dataset.id())
/// .consentStoreId(my_consent.name())
/// .role("roles/editor")
/// .member(test_account.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// location: us-central1
/// name: my-dataset
/// my-consent:
/// type: gcp:healthcare:ConsentStore
/// properties:
/// dataset: ${dataset.id}
/// name: my-consent-store
/// test-account:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: my-account
/// displayName: Test Service Account
/// test-iam:
/// type: gcp:healthcare:ConsentStoreIamMember
/// properties:
/// dataset: ${dataset.id}
/// consentStoreId: ${["my-consent"].name}
/// role: roles/editor
/// member: serviceAccount:${["test-account"].email}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ConsentStore can be imported using any of these accepted formats:
///
/// * `{{dataset}}/consentStores/{{name}}`
///
/// When using the `pulumi import` command, ConsentStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/consentStore:ConsentStore default {{dataset}}/consentStores/{{name}}
/// ```
class ConsentStore extends CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final Output<String> dataset;

  /// Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  late final Output<String?> defaultConsentTtl;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  late final Output<bool?> enableConsentCreateOnUpdate;

  /// User-supplied key-value pairs used to organize Consent stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}`
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of this ConsentStore, for example:
  /// "consent1"
  late final Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  ConsentStore(
    String name, {
    ConsentStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/consentStore:ConsentStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.defaultConsentTtl = registerOutput<String?>('defaultConsentTtl');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableConsentCreateOnUpdate =
        registerOutput<bool?>('enableConsentCreateOnUpdate');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
