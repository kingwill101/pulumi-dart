import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_active_directory_configuration.dart';
import 'ontap_storage_virtual_machine_args.dart';
import 'ontap_storage_virtual_machine_endpoint.dart';
import 'ontap_storage_virtual_machine_state.dart';

/// Manages a FSx Storage Virtual Machine.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html) for more information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapStorageVirtualMachine("test", {
///     fileSystemId: testAwsFsxOntapFileSystem.id,
///     name: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapStorageVirtualMachine("test",
///     file_system_id=test_aws_fsx_ontap_file_system["id"],
///     name="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OntapStorageVirtualMachine("test", new()
///     {
///         FileSystemId = testAwsFsxOntapFileSystem.Id,
///         Name = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOntapStorageVirtualMachine(ctx, "test", &fsx.OntapStorageVirtualMachineArgs{
/// 			FileSystemId: pulumi.Any(testAwsFsxOntapFileSystem.Id),
/// 			Name:         pulumi.String("test"),
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
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachine;
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachineArgs;
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
///         var test = new OntapStorageVirtualMachine("test", OntapStorageVirtualMachineArgs.builder()
///             .fileSystemId(testAwsFsxOntapFileSystem.id())
///             .name("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OntapStorageVirtualMachine
///     properties:
///       fileSystemId: ${testAwsFsxOntapFileSystem.id}
///       name: test
/// ```
///
///
/// ### Using a Self-Managed Microsoft Active Directory
///
/// Additional information for using AWS Directory Service with ONTAP File Systems can be found in the [FSx ONTAP Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/self-managed-AD.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapStorageVirtualMachine("test", {
///     fileSystemId: testAwsFsxOntapFileSystem.id,
///     name: "mysvm",
///     activeDirectoryConfiguration: {
///         netbiosName: "mysvm",
///         selfManagedActiveDirectoryConfiguration: {
///             dnsIps: [
///                 "10.0.0.111",
///                 "10.0.0.222",
///             ],
///             domainName: "corp.example.com",
///             password: "avoid-plaintext-passwords",
///             username: "Admin",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapStorageVirtualMachine("test",
///     file_system_id=test_aws_fsx_ontap_file_system["id"],
///     name="mysvm",
///     active_directory_configuration={
///         "netbios_name": "mysvm",
///         "self_managed_active_directory_configuration": {
///             "dns_ips": [
///                 "10.0.0.111",
///                 "10.0.0.222",
///             ],
///             "domain_name": "corp.example.com",
///             "password": "avoid-plaintext-passwords",
///             "username": "Admin",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OntapStorageVirtualMachine("test", new()
///     {
///         FileSystemId = testAwsFsxOntapFileSystem.Id,
///         Name = "mysvm",
///         ActiveDirectoryConfiguration = new Aws.Fsx.Inputs.OntapStorageVirtualMachineActiveDirectoryConfigurationArgs
///         {
///             NetbiosName = "mysvm",
///             SelfManagedActiveDirectoryConfiguration = new Aws.Fsx.Inputs.OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfigurationArgs
///             {
///                 DnsIps = new[]
///                 {
///                     "10.0.0.111",
///                     "10.0.0.222",
///                 },
///                 DomainName = "corp.example.com",
///                 Password = "avoid-plaintext-passwords",
///                 Username = "Admin",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOntapStorageVirtualMachine(ctx, "test", &fsx.OntapStorageVirtualMachineArgs{
/// 			FileSystemId: pulumi.Any(testAwsFsxOntapFileSystem.Id),
/// 			Name:         pulumi.String("mysvm"),
/// 			ActiveDirectoryConfiguration: &fsx.OntapStorageVirtualMachineActiveDirectoryConfigurationArgs{
/// 				NetbiosName: pulumi.String("mysvm"),
/// 				SelfManagedActiveDirectoryConfiguration: &fsx.OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfigurationArgs{
/// 					DnsIps: pulumi.StringArray{
/// 						pulumi.String("10.0.0.111"),
/// 						pulumi.String("10.0.0.222"),
/// 					},
/// 					DomainName: pulumi.String("corp.example.com"),
/// 					Password:   pulumi.String("avoid-plaintext-passwords"),
/// 					Username:   pulumi.String("Admin"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachine;
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachineArgs;
/// import com.pulumi.aws.fsx.inputs.OntapStorageVirtualMachineActiveDirectoryConfigurationArgs;
/// import com.pulumi.aws.fsx.inputs.OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfigurationArgs;
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
///         var test = new OntapStorageVirtualMachine("test", OntapStorageVirtualMachineArgs.builder()
///             .fileSystemId(testAwsFsxOntapFileSystem.id())
///             .name("mysvm")
///             .activeDirectoryConfiguration(OntapStorageVirtualMachineActiveDirectoryConfigurationArgs.builder()
///                 .netbiosName("mysvm")
///                 .selfManagedActiveDirectoryConfiguration(OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfigurationArgs.builder()
///                     .dnsIps(
///                         "10.0.0.111",
///                         "10.0.0.222")
///                     .domainName("corp.example.com")
///                     .password("avoid-plaintext-passwords")
///                     .username("Admin")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OntapStorageVirtualMachine
///     properties:
///       fileSystemId: ${testAwsFsxOntapFileSystem.id}
///       name: mysvm
///       activeDirectoryConfiguration:
///         netbiosName: mysvm
///         selfManagedActiveDirectoryConfiguration:
///           dnsIps:
///             - 10.0.0.111
///             - 10.0.0.222
///           domainName: corp.example.com
///           password: avoid-plaintext-passwords
///           username: Admin
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Storage Virtual Machine using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapStorageVirtualMachine:OntapStorageVirtualMachine example svm-12345678abcdef123
/// ```
///
/// Certain resource arguments, like `svm_admin_password` and the `self_managed_active_directory` configuation block `password`, do not have a FSx API method for reading the information after creation. If these arguments are set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.OntapStorageVirtualMachine("example", {svmAdminPassword: "avoid-plaintext-passwords"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.OntapStorageVirtualMachine("example", svm_admin_password="avoid-plaintext-passwords")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.OntapStorageVirtualMachine("example", new()
///     {
///         SvmAdminPassword = "avoid-plaintext-passwords",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOntapStorageVirtualMachine(ctx, "example", &fsx.OntapStorageVirtualMachineArgs{
/// 			SvmAdminPassword: pulumi.String("avoid-plaintext-passwords"),
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
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachine;
/// import com.pulumi.aws.fsx.OntapStorageVirtualMachineArgs;
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
///         var example = new OntapStorageVirtualMachine("example", OntapStorageVirtualMachineArgs.builder()
///             .svmAdminPassword("avoid-plaintext-passwords")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:OntapStorageVirtualMachine
///     properties:
///       svmAdminPassword: avoid-plaintext-passwords
/// ```
class OntapStorageVirtualMachine extends pulumi.CustomResource {
  /// Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  late final pulumi.Output<OntapStorageVirtualMachineActiveDirectoryConfiguration?> activeDirectoryConfiguration;
  /// Amazon Resource Name of the storage virtual machine.
  late final pulumi.Output<String> arn;
  /// The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  late final pulumi.Output<List<OntapStorageVirtualMachineEndpoint>> endpoints;
  /// The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  late final pulumi.Output<String> fileSystemId;
  /// The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  late final pulumi.Output<String?> rootVolumeSecurityStyle;
  /// Describes the SVM's subtype, e.g. `DEFAULT`
  late final pulumi.Output<String> subtype;
  /// Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  late final pulumi.Output<String?> svmAdminPassword;
  /// A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The SVM's UUID (universally unique identifier).
  late final pulumi.Output<String> uuid;

  /// Creates a new [OntapStorageVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OntapStorageVirtualMachine]. {@macro pulumi_fsx_ontap_storage_virtual_machine_ontap_storage_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OntapStorageVirtualMachine(
    String name, {
    OntapStorageVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapStorageVirtualMachine:OntapStorageVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectoryConfiguration = registerOutput<OntapStorageVirtualMachineActiveDirectoryConfiguration?>('activeDirectoryConfiguration');
    this.arn = registerOutput<String>('arn');
    this.endpoints = registerOutput<List<OntapStorageVirtualMachineEndpoint>>('endpoints');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rootVolumeSecurityStyle = registerOutput<String?>('rootVolumeSecurityStyle');
    this.subtype = registerOutput<String>('subtype');
    this.svmAdminPassword = registerOutput<String?>('svmAdminPassword');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [OntapStorageVirtualMachine] resource's state with the given [name] and [id].
  static OntapStorageVirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    OntapStorageVirtualMachineState? state,
  }) {
    return OntapStorageVirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OntapStorageVirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapStorageVirtualMachine:OntapStorageVirtualMachine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectoryConfiguration = registerOutput<OntapStorageVirtualMachineActiveDirectoryConfiguration?>('activeDirectoryConfiguration');
    this.arn = registerOutput<String>('arn');
    this.endpoints = registerOutput<List<OntapStorageVirtualMachineEndpoint>>('endpoints');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rootVolumeSecurityStyle = registerOutput<String?>('rootVolumeSecurityStyle');
    this.subtype = registerOutput<String>('subtype');
    this.svmAdminPassword = registerOutput<String?>('svmAdminPassword');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uuid = registerOutput<String>('uuid');
  }
}
