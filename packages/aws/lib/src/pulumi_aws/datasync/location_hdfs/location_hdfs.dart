import 'package:pulumi/pulumi.dart' as pulumi;
import '../location_hdfs_name_node/location_hdfs_name_node.dart';
import '../location_hdfs_qop_configuration/location_hdfs_qop_configuration.dart';
import 'location_hdfs_args.dart';

/// Manages an HDFS Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
///
/// ### Kerberos Authentication
///
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

  /// The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use `kerberos_keytab_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab_base64`) is required.
  late final pulumi.Output<String?> kerberosKeytab;

  /// Use instead of `kerberos_keytab` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab`) is required.
  late final pulumi.Output<String?> kerberosKeytabBase64;

  /// The krb5.conf file that contains the Kerberos configuration information. Use `kerberos_krb5_conf_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf_base64`) is required.
  late final pulumi.Output<String?> kerberosKrb5Conf;

  /// Use instead of `kerberos_krb5_conf` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf`) is required.
  late final pulumi.Output<String?> kerberosKrb5ConfBase64;

  /// The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for `authentication_type`, this parameter is required.
  late final pulumi.Output<String?> kerberosPrincipal;

  /// The URI of the HDFS cluster's Key Management Server (KMS).
  late final pulumi.Output<String?> kmsKeyProviderUri;

  /// The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  late final pulumi.Output<List<LocationHdfsNameNode>> nameNodes;

  /// The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If `qop_configuration` isn't specified, `rpc_protection` and `data_transfer_protection` default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  late final pulumi.Output<LocationHdfsQopConfiguration> qopConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  late final pulumi.Output<int?> replicationFactor;

  /// The user name used to identify the client on the host operating system. If `SIMPLE` is specified for `authentication_type`, this parameter is required.
  late final pulumi.Output<String?> simpleUser;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  late final pulumi.Output<String?> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

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
