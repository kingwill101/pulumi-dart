import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sftp_args.dart';
import 'linked_service_sftp_key_vault_password.dart';
import 'linked_service_sftp_key_vault_private_key_content_base64.dart';
import 'linked_service_sftp_key_vault_private_key_passphrase.dart';

/// Manages a Linked Service (connection) between a SFTP Server and Azure Data Factory.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceSftp = new azure.datafactory.LinkedServiceSftp("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     authenticationType: "Basic",
///     host: "http://www.bing.com",
///     port: 22,
///     username: "foo",
///     password: "bar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_sftp = azure.datafactory.LinkedServiceSftp("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     authentication_type="Basic",
///     host="http://www.bing.com",
///     port=22,
///     username="foo",
///     password="bar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceSftp = new Azure.DataFactory.LinkedServiceSftp("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         AuthenticationType = "Basic",
///         Host = "http://www.bing.com",
///         Port = 22,
///         Username = "foo",
///         Password = "bar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceSftp(ctx, "example", &datafactory.LinkedServiceSftpArgs{
/// 			Name:               pulumi.String("example"),
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			AuthenticationType: pulumi.String("Basic"),
/// 			Host:               pulumi.String("http://www.bing.com"),
/// 			Port:               pulumi.Int(22),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("bar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceSftp;
/// import com.pulumi.azure.datafactory.LinkedServiceSftpArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceSftp = new LinkedServiceSftp("exampleLinkedServiceSftp", LinkedServiceSftpArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .authenticationType("Basic")
///             .host("http://www.bing.com")
///             .port(22)
///             .username("foo")
///             .password("bar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceSftp:
///     type: azure:datafactory:LinkedServiceSftp
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       authenticationType: Basic
///       host: http://www.bing.com
///       port: 22
///       username: foo
///       password: bar
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceSftp:LinkedServiceSftp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceSftp extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to SFTP Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The type of authentication used to connect to the SFTP server. Valid options are `MultiFactor`, `Basic` and `SshPublicKey`.
  late final pulumi.Output<String> authenticationType;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The SFTP server hostname.
  late final pulumi.Output<String> host;
  /// The host key fingerprint of the SFTP server.
  late final pulumi.Output<String?> hostKeyFingerprint;
  /// The name of the integration runtime to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// A `key_vault_password` block as defined below.
  ///
  /// > **Note:** Either `password` or `key_vault_password` is required when `authentication_type` is set to `Basic`.
  late final pulumi.Output<List<LinkedServiceSftpKeyVaultPassword>?> keyVaultPasswords;
  /// A `key_vault_private_key_content_base64` block as defined below.
  late final pulumi.Output<LinkedServiceSftpKeyVaultPrivateKeyContentBase64?> keyVaultPrivateKeyContentBase64;
  /// A `key_vault_private_key_passphrase` block as defined below.
  ///
  /// > **Note:** One of `private_key_content_base64` or `private_key_path` (or their Key Vault equivalent) is required when `authentication_type` is set to `SshPublicKey`.
  late final pulumi.Output<LinkedServiceSftpKeyVaultPrivateKeyPassphrase?> keyVaultPrivateKeyPassphrase;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Password to log on to the SFTP Server for Basic Authentication.
  late final pulumi.Output<String?> password;
  /// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
  late final pulumi.Output<int> port;
  /// The Base64 encoded private key content in OpenSSH format used to log on to the SFTP server.
  late final pulumi.Output<String?> privateKeyContentBase64;
  /// The passphrase for the private key if the key is encrypted.
  late final pulumi.Output<String?> privateKeyPassphrase;
  /// The absolute path to the private key file that the self-hosted integration runtime can access.
  ///
  /// > **Note:** `private_key_path` only applies when using a self-hosted integration runtime (instead of the default Azure provided runtime), as indicated by supplying a value for `integration_runtime_name`.
  late final pulumi.Output<String?> privateKeyPath;
  /// Whether to validate host key fingerprint while connecting. If set to `false`, `host_key_fingerprint` must also be set.
  late final pulumi.Output<bool?> skipHostKeyValidation;
  /// The username used to log on to the SFTP server.
  late final pulumi.Output<String> username;

  /// Creates a new [LinkedServiceSftp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceSftp]. {@macro pulumi_datafactory_linked_service_sftp_linked_service_sftp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceSftp(
    String name, {
    LinkedServiceSftpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceSftp:LinkedServiceSftp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.host = registerOutput<String>('host');
    this.hostKeyFingerprint = registerOutput<String?>('hostKeyFingerprint');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultPasswords = registerOutput<List<LinkedServiceSftpKeyVaultPassword>?>('keyVaultPasswords');
    this.keyVaultPrivateKeyContentBase64 = registerOutput<LinkedServiceSftpKeyVaultPrivateKeyContentBase64?>('keyVaultPrivateKeyContentBase64');
    this.keyVaultPrivateKeyPassphrase = registerOutput<LinkedServiceSftpKeyVaultPrivateKeyPassphrase?>('keyVaultPrivateKeyPassphrase');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.password = registerOutput<String?>('password');
    this.port = registerOutput<int>('port');
    this.privateKeyContentBase64 = registerOutput<String?>('privateKeyContentBase64');
    this.privateKeyPassphrase = registerOutput<String?>('privateKeyPassphrase');
    this.privateKeyPath = registerOutput<String?>('privateKeyPath');
    this.skipHostKeyValidation = registerOutput<bool?>('skipHostKeyValidation');
    this.username = registerOutput<String>('username');
  }
}
