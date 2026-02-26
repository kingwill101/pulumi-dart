import 'package:pulumi/pulumi.dart';
import '../location_hdfs_name_node/location_hdfs_name_node.dart';
import '../location_hdfs_qop_configuration/location_hdfs_qop_configuration.dart';
import 'location_hdfs_args.dart';

/// Manages an HDFS Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationHdfs("example", {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// authenticationType: "SIMPLE",
/// simpleUser: "example",
/// nameNodes: [{
/// hostname: exampleAwsInstance.privateDns,
/// port: 80,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationHdfs("example",
/// agent_arns=[example_aws_datasync_agent["arn"]],
/// authentication_type="SIMPLE",
/// simple_user="example",
/// name_nodes=[{
/// "hostname": example_aws_instance["privateDns"],
/// "port": 80,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataSync.LocationHdfs("example", new()
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType = "SIMPLE",
/// SimpleUser = "example",
/// NameNodes = new[]
/// {
/// new Aws.DataSync.Inputs.LocationHdfsNameNodeArgs
/// {
/// Hostname = exampleAwsInstance.PrivateDns,
/// Port = 80,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewLocationHdfs(ctx, "example", &datasync.LocationHdfsArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType: pulumi.String("SIMPLE"),
/// SimpleUser:         pulumi.String("example"),
/// NameNodes: datasync.LocationHdfsNameNodeArray{
/// &datasync.LocationHdfsNameNodeArgs{
/// Hostname: pulumi.Any(exampleAwsInstance.PrivateDns),
/// Port:     pulumi.Int(80),
/// },
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
/// import com.pulumi.aws.datasync.LocationHdfs;
/// import com.pulumi.aws.datasync.LocationHdfsArgs;
/// import com.pulumi.aws.datasync.inputs.LocationHdfsNameNodeArgs;
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
/// var example = new LocationHdfs("example", LocationHdfsArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .authenticationType("SIMPLE")
/// .simpleUser("example")
/// .nameNodes(LocationHdfsNameNodeArgs.builder()
/// .hostname(exampleAwsInstance.privateDns())
/// .port(80)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:LocationHdfs
/// properties:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// authenticationType: SIMPLE
/// simpleUser: example
/// nameNodes:
/// - hostname: ${exampleAwsInstance.privateDns}
/// port: 80
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Kerberos Authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.datasync.LocationHdfs("example", {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// authenticationType: "KERBEROS",
/// nameNodes: [{
/// hostname: exampleAwsInstance.privateDns,
/// port: 80,
/// }],
/// kerberosPrincipal: "user@example.com",
/// kerberosKeytabBase64: std.filebase64({
/// input: "user.keytab",
/// }).then(invoke => invoke.result),
/// kerberosKrb5Conf: std.file({
/// input: "krb5.conf",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.datasync.LocationHdfs("example",
/// agent_arns=[example_aws_datasync_agent["arn"]],
/// authentication_type="KERBEROS",
/// name_nodes=[{
/// "hostname": example_aws_instance["privateDns"],
/// "port": 80,
/// }],
/// kerberos_principal="user@example.com",
/// kerberos_keytab_base64=std.filebase64(input="user.keytab").result,
/// kerberos_krb5_conf=std.file(input="krb5.conf").result)
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
/// var example = new Aws.DataSync.LocationHdfs("example", new()
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType = "KERBEROS",
/// NameNodes = new[]
/// {
/// new Aws.DataSync.Inputs.LocationHdfsNameNodeArgs
/// {
/// Hostname = exampleAwsInstance.PrivateDns,
/// Port = 80,
/// },
/// },
/// KerberosPrincipal = "user@example.com",
/// KerberosKeytabBase64 = Std.Filebase64.Invoke(new()
/// {
/// Input = "user.keytab",
/// }).Apply(invoke => invoke.Result),
/// KerberosKrb5Conf = Std.File.Invoke(new()
/// {
/// Input = "krb5.conf",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// Input: "user.keytab",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "krb5.conf",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = datasync.NewLocationHdfs(ctx, "example", &datasync.LocationHdfsArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType: pulumi.String("KERBEROS"),
/// NameNodes: datasync.LocationHdfsNameNodeArray{
/// &datasync.LocationHdfsNameNodeArgs{
/// Hostname: pulumi.Any(exampleAwsInstance.PrivateDns),
/// Port:     pulumi.Int(80),
/// },
/// },
/// KerberosPrincipal:    pulumi.String("user@example.com"),
/// KerberosKeytabBase64: pulumi.String(invokeFilebase64.Result),
/// KerberosKrb5Conf:     pulumi.String(invokeFile1.Result),
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
/// import com.pulumi.aws.datasync.LocationHdfs;
/// import com.pulumi.aws.datasync.LocationHdfsArgs;
/// import com.pulumi.aws.datasync.inputs.LocationHdfsNameNodeArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var example = new LocationHdfs("example", LocationHdfsArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .authenticationType("KERBEROS")
/// .nameNodes(LocationHdfsNameNodeArgs.builder()
/// .hostname(exampleAwsInstance.privateDns())
/// .port(80)
/// .build())
/// .kerberosPrincipal("user@example.com")
/// .kerberosKeytabBase64(StdFunctions.filebase64(Filebase64Args.builder()
/// .input("user.keytab")
/// .build()).result())
/// .kerberosKrb5Conf(StdFunctions.file(FileArgs.builder()
/// .input("krb5.conf")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:LocationHdfs
/// properties:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// authenticationType: KERBEROS
/// nameNodes:
/// - hostname: ${exampleAwsInstance.privateDns}
/// port: 80
/// kerberosPrincipal: user@example.com
/// kerberosKeytabBase64:
/// fn::invoke:
/// function: std:filebase64
/// arguments:
/// input: user.keytab
/// return: result
/// kerberosKrb5Conf:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: krb5.conf
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DataSync HDFS location.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.LocationHdfs`" pulumi-lang-dotnet="`aws.datasync.LocationHdfs`" pulumi-lang-go="`datasync.LocationHdfs`" pulumi-lang-python="`datasync.LocationHdfs`" pulumi-lang-yaml="`aws.datasync.LocationHdfs`" pulumi-lang-java="`aws.datasync.LocationHdfs`">`aws.datasync.LocationHdfs`</span> using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationHdfs:LocationHdfs example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationHdfs extends CustomResource {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final Output<List<String>> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The type of authentication used to determine the identity of the user. Valid values are `SIMPLE` and `KERBEROS`.
  late final Output<String?> authenticationType;

  /// The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB).
  late final Output<int?> blockSize;

  /// The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use <span pulumi-lang-nodejs="`kerberosKeytabBase64`" pulumi-lang-dotnet="`KerberosKeytabBase64`" pulumi-lang-go="`kerberosKeytabBase64`" pulumi-lang-python="`kerberos_keytab_base64`" pulumi-lang-yaml="`kerberosKeytabBase64`" pulumi-lang-java="`kerberosKeytabBase64`">`kerberos_keytab_base64`</span> instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKeytabBase64`" pulumi-lang-dotnet="`KerberosKeytabBase64`" pulumi-lang-go="`kerberosKeytabBase64`" pulumi-lang-python="`kerberos_keytab_base64`" pulumi-lang-yaml="`kerberosKeytabBase64`" pulumi-lang-java="`kerberosKeytabBase64`">`kerberos_keytab_base64`</span>) is required.
  late final Output<String?> kerberosKeytab;

  /// Use instead of <span pulumi-lang-nodejs="`kerberosKeytab`" pulumi-lang-dotnet="`KerberosKeytab`" pulumi-lang-go="`kerberosKeytab`" pulumi-lang-python="`kerberos_keytab`" pulumi-lang-yaml="`kerberosKeytab`" pulumi-lang-java="`kerberosKeytab`">`kerberos_keytab`</span> to pass base64-encoded binary data directly. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKeytab`" pulumi-lang-dotnet="`KerberosKeytab`" pulumi-lang-go="`kerberosKeytab`" pulumi-lang-python="`kerberos_keytab`" pulumi-lang-yaml="`kerberosKeytab`" pulumi-lang-java="`kerberosKeytab`">`kerberos_keytab`</span>) is required.
  late final Output<String?> kerberosKeytabBase64;

  /// The krb5.conf file that contains the Kerberos configuration information. Use <span pulumi-lang-nodejs="`kerberosKrb5ConfBase64`" pulumi-lang-dotnet="`KerberosKrb5ConfBase64`" pulumi-lang-go="`kerberosKrb5ConfBase64`" pulumi-lang-python="`kerberos_krb5_conf_base64`" pulumi-lang-yaml="`kerberosKrb5ConfBase64`" pulumi-lang-java="`kerberosKrb5ConfBase64`">`kerberos_krb5_conf_base64`</span> instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKrb5ConfBase64`" pulumi-lang-dotnet="`KerberosKrb5ConfBase64`" pulumi-lang-go="`kerberosKrb5ConfBase64`" pulumi-lang-python="`kerberos_krb5_conf_base64`" pulumi-lang-yaml="`kerberosKrb5ConfBase64`" pulumi-lang-java="`kerberosKrb5ConfBase64`">`kerberos_krb5_conf_base64`</span>) is required.
  late final Output<String?> kerberosKrb5Conf;

  /// Use instead of <span pulumi-lang-nodejs="`kerberosKrb5Conf`" pulumi-lang-dotnet="`KerberosKrb5Conf`" pulumi-lang-go="`kerberosKrb5Conf`" pulumi-lang-python="`kerberos_krb5_conf`" pulumi-lang-yaml="`kerberosKrb5Conf`" pulumi-lang-java="`kerberosKrb5Conf`">`kerberos_krb5_conf`</span> to pass base64-encoded binary data directly. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKrb5Conf`" pulumi-lang-dotnet="`KerberosKrb5Conf`" pulumi-lang-go="`kerberosKrb5Conf`" pulumi-lang-python="`kerberos_krb5_conf`" pulumi-lang-yaml="`kerberosKrb5Conf`" pulumi-lang-java="`kerberosKrb5Conf`">`kerberos_krb5_conf`</span>) is required.
  late final Output<String?> kerberosKrb5ConfBase64;

  /// The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter is required.
  late final Output<String?> kerberosPrincipal;

  /// The URI of the HDFS cluster's Key Management Server (KMS).
  late final Output<String?> kmsKeyProviderUri;

  /// The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  late final Output<List<LocationHdfsNameNode>> nameNodes;

  /// The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If <span pulumi-lang-nodejs="`qopConfiguration`" pulumi-lang-dotnet="`QopConfiguration`" pulumi-lang-go="`qopConfiguration`" pulumi-lang-python="`qop_configuration`" pulumi-lang-yaml="`qopConfiguration`" pulumi-lang-java="`qopConfiguration`">`qop_configuration`</span> isn't specified, <span pulumi-lang-nodejs="`rpcProtection`" pulumi-lang-dotnet="`RpcProtection`" pulumi-lang-go="`rpcProtection`" pulumi-lang-python="`rpc_protection`" pulumi-lang-yaml="`rpcProtection`" pulumi-lang-java="`rpcProtection`">`rpc_protection`</span> and <span pulumi-lang-nodejs="`dataTransferProtection`" pulumi-lang-dotnet="`DataTransferProtection`" pulumi-lang-go="`dataTransferProtection`" pulumi-lang-python="`data_transfer_protection`" pulumi-lang-yaml="`dataTransferProtection`" pulumi-lang-java="`dataTransferProtection`">`data_transfer_protection`</span> default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  late final Output<LocationHdfsQopConfiguration> qopConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  late final Output<int?> replicationFactor;

  /// The user name used to identify the client on the host operating system. If `SIMPLE` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter is required.
  late final Output<String?> simpleUser;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  late final Output<String?> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> uri;

  LocationHdfs(
    String name, {
    LocationHdfsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationHdfs:LocationHdfs',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentArns = registerOutput<List<String>>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String?>('authenticationType');
    this.blockSize = registerOutput<int?>('blockSize');
    this.kerberosKeytab = registerOutput<String?>('kerberosKeytab');
    this.kerberosKeytabBase64 = registerOutput<String?>('kerberosKeytabBase64');
    this.kerberosKrb5Conf = registerOutput<String?>('kerberosKrb5Conf');
    this.kerberosKrb5ConfBase64 =
        registerOutput<String?>('kerberosKrb5ConfBase64');
    this.kerberosPrincipal = registerOutput<String?>('kerberosPrincipal');
    this.kmsKeyProviderUri = registerOutput<String?>('kmsKeyProviderUri');
    this.nameNodes = registerOutput<List<LocationHdfsNameNode>>('nameNodes');
    this.qopConfiguration =
        registerOutput<LocationHdfsQopConfiguration>('qopConfiguration');
    this.region = registerOutput<String>('region');
    this.replicationFactor = registerOutput<int?>('replicationFactor');
    this.simpleUser = registerOutput<String?>('simpleUser');
    this.subdirectory = registerOutput<String?>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
