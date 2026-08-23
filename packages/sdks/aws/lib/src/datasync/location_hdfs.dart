import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_hdfs_args.dart';
import 'location_hdfs_qop_configuration.dart';
import 'location_hdfs_state.dart';

/// Manages an HDFS Location within AWS DataSync.
///
/// &gt; **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationHdfs("example", {
///     agentArns: [exampleAwsDatasyncAgent.arn],
///     authenticationType: "SIMPLE",
///     simpleUser: "example",
///     nameNodes: [{
///         hostname: exampleAwsInstance.privateDns,
///         port: 80,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationHdfs("example",
///     agent_arns=[example_aws_datasync_agent["arn"]],
///     authentication_type="SIMPLE",
///     simple_user="example",
///     name_nodes=[{
///         "hostname": example_aws_instance["privateDns"],
///         "port": 80,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationHdfs("example", new()
///     {
///         AgentArns = new[]
///         {
///             exampleAwsDatasyncAgent.Arn,
///         },
///         AuthenticationType = "SIMPLE",
///         SimpleUser = "example",
///         NameNodes = new[]
///         {
///             new Aws.DataSync.Inputs.LocationHdfsNameNodeArgs
///             {
///                 Hostname = exampleAwsInstance.PrivateDns,
///                 Port = 80,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewLocationHdfs(ctx, "example", &datasync.LocationHdfsArgs{
/// 			AgentArns: pulumi.StringArray{
/// 				exampleAwsDatasyncAgent.Arn,
/// 			},
/// 			AuthenticationType: pulumi.String("SIMPLE"),
/// 			SimpleUser:         pulumi.String("example"),
/// 			NameNodes: datasync.LocationHdfsNameNodeArray{
/// 				&datasync.LocationHdfsNameNodeArgs{
/// 					Hostname: pulumi.Any(exampleAwsInstance.PrivateDns),
/// 					Port:     pulumi.Int(80),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_locationhdfs" "example" {
///   agent_arns          = [exampleAwsDatasyncAgent.arn]
///   authentication_type = "SIMPLE"
///   simple_user         = "example"
///   name_nodes {
///     hostname = exampleAwsInstance.privateDns
///     port     = 80
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.LocationHdfs;
/// import com.pulumi.aws.datasync.LocationHdfsArgs;
/// import com.pulumi.aws.datasync.inputs.LocationHdfsNameNodeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new LocationHdfs("example", LocationHdfsArgs.builder()
///             .agentArns(exampleAwsDatasyncAgent.arn())
///             .authenticationType("SIMPLE")
///             .simpleUser("example")
///             .nameNodes(LocationHdfsNameNodeArgs.builder()
///                 .hostname(exampleAwsInstance.privateDns())
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationHdfs
///     properties:
///       agentArns:
///         - ${exampleAwsDatasyncAgent.arn}
///       authenticationType: SIMPLE
///       simpleUser: example
///       nameNodes:
///         - hostname: ${exampleAwsInstance.privateDns}
///           port: 80
/// ```
///
///
/// ### Kerberos Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.datasync.LocationHdfs("example", {
///     agentArns: [exampleAwsDatasyncAgent.arn],
///     authenticationType: "KERBEROS",
///     nameNodes: [{
///         hostname: exampleAwsInstance.privateDns,
///         port: 80,
///     }],
///     kerberosPrincipal: "user@example.com",
///     kerberosKeytabBase64: std.filebase64({
///         input: "user.keytab",
///     }).then(invoke => invoke.result),
///     kerberosKrb5Conf: std.file({
///         input: "krb5.conf",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.datasync.LocationHdfs("example",
///     agent_arns=[example_aws_datasync_agent["arn"]],
///     authentication_type="KERBEROS",
///     name_nodes=[{
///         "hostname": example_aws_instance["privateDns"],
///         "port": 80,
///     }],
///     kerberos_principal="user@example.com",
///     kerberos_keytab_base64=std.filebase64(input="user.keytab").result,
///     kerberos_krb5_conf=std.file(input="krb5.conf").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationHdfs("example", new()
///     {
///         AgentArns = new[]
///         {
///             exampleAwsDatasyncAgent.Arn,
///         },
///         AuthenticationType = "KERBEROS",
///         NameNodes = new[]
///         {
///             new Aws.DataSync.Inputs.LocationHdfsNameNodeArgs
///             {
///                 Hostname = exampleAwsInstance.PrivateDns,
///                 Port = 80,
///             },
///         },
///         KerberosPrincipal = "user@example.com",
///         KerberosKeytabBase64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "user.keytab",
///         }).Apply(invoke => invoke.Result),
///         KerberosKrb5Conf = Std.File.Invoke(new()
///         {
///             Input = "krb5.conf",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "user.keytab",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "krb5.conf",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datasync.NewLocationHdfs(ctx, "example", &datasync.LocationHdfsArgs{
/// 			AgentArns: pulumi.StringArray{
/// 				exampleAwsDatasyncAgent.Arn,
/// 			},
/// 			AuthenticationType: pulumi.String("KERBEROS"),
/// 			NameNodes: datasync.LocationHdfsNameNodeArray{
/// 				&datasync.LocationHdfsNameNodeArgs{
/// 					Hostname: pulumi.Any(exampleAwsInstance.PrivateDns),
/// 					Port:     pulumi.Int(80),
/// 				},
/// 			},
/// 			KerberosPrincipal:    pulumi.String("user@example.com"),
/// 			KerberosKeytabBase64: pulumi.String(invokeFilebase64.Result),
/// 			KerberosKrb5Conf:     pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_datasync_locationhdfs" "example" {
///   agent_arns          = [exampleAwsDatasyncAgent.arn]
///   authentication_type = "KERBEROS"
///   name_nodes {
///     hostname = exampleAwsInstance.privateDns
///     port     = 80
///   }
///   kerberos_principal     = "user@example.com"
///   kerberos_keytab_base64 = filebase64("user.keytab")
///   kerberos_krb5_conf     = file("krb5.conf")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.LocationHdfs;
/// import com.pulumi.aws.datasync.LocationHdfsArgs;
/// import com.pulumi.aws.datasync.inputs.LocationHdfsNameNodeArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new LocationHdfs("example", LocationHdfsArgs.builder()
///             .agentArns(exampleAwsDatasyncAgent.arn())
///             .authenticationType("KERBEROS")
///             .nameNodes(LocationHdfsNameNodeArgs.builder()
///                 .hostname(exampleAwsInstance.privateDns())
///                 .port(80)
///                 .build())
///             .kerberosPrincipal("user@example.com")
///             .kerberosKeytabBase64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("user.keytab")
///                 .build()).result())
///             .kerberosKrb5Conf(StdFunctions.file(FileArgs.builder()
///                 .input("krb5.conf")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationHdfs
///     properties:
///       agentArns:
///         - ${exampleAwsDatasyncAgent.arn}
///       authenticationType: KERBEROS
///       nameNodes:
///         - hostname: ${exampleAwsInstance.privateDns}
///           port: 80
///       kerberosPrincipal: user@example.com
///       kerberosKeytabBase64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: user.keytab
///           return: result
///       kerberosKrb5Conf:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: krb5.conf
///           return: result
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync HDFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationHdfs` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationHdfs:LocationHdfs example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationHdfs extends pulumi.CustomResource {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final pulumi.Output<List<String>> agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// The type of authentication used to determine the identity of the user. Valid values are `SIMPLE` and `KERBEROS`.
  late final pulumi.Output<String?> authenticationType;
  /// The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB).
  late final pulumi.Output<int?> blockSize;
  /// The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use `kerberosKeytabBase64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authenticationType`, this parameter (or `kerberosKeytabBase64`) is required.
  late final pulumi.Output<String?> kerberosKeytab;
  /// Use instead of `kerberosKeytab` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authenticationType`, this parameter (or `kerberosKeytab`) is required.
  late final pulumi.Output<String?> kerberosKeytabBase64;
  /// The krb5.conf file that contains the Kerberos configuration information. Use `kerberosKrb5ConfBase64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authenticationType`, this parameter (or `kerberosKrb5ConfBase64`) is required.
  late final pulumi.Output<String?> kerberosKrb5Conf;
  /// Use instead of `kerberosKrb5Conf` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authenticationType`, this parameter (or `kerberosKrb5Conf`) is required.
  late final pulumi.Output<String?> kerberosKrb5ConfBase64;
  /// The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for `authenticationType`, this parameter is required.
  late final pulumi.Output<String?> kerberosPrincipal;
  /// The URI of the HDFS cluster's Key Management Server (KMS).
  late final pulumi.Output<String?> kmsKeyProviderUri;
  /// The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  late final pulumi.Output<List<Map<String, dynamic>>> nameNodes;
  /// The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If `qopConfiguration` isn't specified, `rpcProtection` and `dataTransferProtection` default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  late final pulumi.Output<LocationHdfsQopConfiguration> qopConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  late final pulumi.Output<int?> replicationFactor;
  /// The user name used to identify the client on the host operating system. If `SIMPLE` is specified for `authenticationType`, this parameter is required.
  late final pulumi.Output<String?> simpleUser;
  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  late final pulumi.Output<String?> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  /// Creates a new [LocationHdfs].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationHdfs]. {@macro pulumi_datasync_location_hdfs_location_hdfs_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationHdfs(
    String name, {
    LocationHdfsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationHdfs:LocationHdfs',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String?>('authenticationType');
    blockSize = registerOutput<int?>('blockSize');
    kerberosKeytab = registerOutput<String?>('kerberosKeytab');
    kerberosKeytabBase64 = registerOutput<String?>('kerberosKeytabBase64');
    kerberosKrb5Conf = registerOutput<String?>('kerberosKrb5Conf');
    kerberosKrb5ConfBase64 = registerOutput<String?>('kerberosKrb5ConfBase64');
    kerberosPrincipal = registerOutput<String?>('kerberosPrincipal');
    kmsKeyProviderUri = registerOutput<String?>('kmsKeyProviderUri');
    nameNodes = registerOutput<List<Map<String, dynamic>>>('nameNodes');
    qopConfiguration = registerOutput<LocationHdfsQopConfiguration>('qopConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationHdfsQopConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int?>('replicationFactor');
    simpleUser = registerOutput<String?>('simpleUser');
    subdirectory = registerOutput<String?>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [LocationHdfs] resource's state with the given [name] and [id].
  static LocationHdfs get(
    String name,
    pulumi.Input<String> id, {
    LocationHdfsState? state,
  }) {
    return LocationHdfs._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationHdfs._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationHdfs:LocationHdfs',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String?>('authenticationType');
    blockSize = registerOutput<int?>('blockSize');
    kerberosKeytab = registerOutput<String?>('kerberosKeytab');
    kerberosKeytabBase64 = registerOutput<String?>('kerberosKeytabBase64');
    kerberosKrb5Conf = registerOutput<String?>('kerberosKrb5Conf');
    kerberosKrb5ConfBase64 = registerOutput<String?>('kerberosKrb5ConfBase64');
    kerberosPrincipal = registerOutput<String?>('kerberosPrincipal');
    kmsKeyProviderUri = registerOutput<String?>('kmsKeyProviderUri');
    nameNodes = registerOutput<List<Map<String, dynamic>>>('nameNodes');
    qopConfiguration = registerOutput<LocationHdfsQopConfiguration>('qopConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationHdfsQopConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int?>('replicationFactor');
    simpleUser = registerOutput<String?>('simpleUser');
    subdirectory = registerOutput<String?>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }
}
