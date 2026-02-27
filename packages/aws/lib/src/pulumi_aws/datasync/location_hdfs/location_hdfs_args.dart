// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../location_hdfs_name_node/location_hdfs_name_node.dart';
import '../location_hdfs_qop_configuration/location_hdfs_qop_configuration.dart';

/// The set of arguments for LocationHdfs.
class LocationHdfsArgs {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>> agentArns;

  /// The type of authentication used to determine the identity of the user. Valid values are `SIMPLE` and `KERBEROS`.
  final pulumi.Input<String>? authenticationType;

  /// The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB).
  final pulumi.Input<int>? blockSize;

  /// The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use `kerberos_keytab_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab_base64`) is required.
  final pulumi.Input<String>? kerberosKeytab;

  /// Use instead of `kerberos_keytab` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab`) is required.
  final pulumi.Input<String>? kerberosKeytabBase64;

  /// The krb5.conf file that contains the Kerberos configuration information. Use `kerberos_krb5_conf_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf_base64`) is required.
  final pulumi.Input<String>? kerberosKrb5Conf;

  /// Use instead of `kerberos_krb5_conf` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf`) is required.
  final pulumi.Input<String>? kerberosKrb5ConfBase64;

  /// The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for `authentication_type`, this parameter is required.
  final pulumi.Input<String>? kerberosPrincipal;

  /// The URI of the HDFS cluster's Key Management Server (KMS).
  final pulumi.Input<String>? kmsKeyProviderUri;

  /// The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  final pulumi.Input<List<LocationHdfsNameNode>> nameNodes;

  /// The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If `qop_configuration` isn't specified, `rpc_protection` and `data_transfer_protection` default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  final pulumi.Input<LocationHdfsQopConfiguration>? qopConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  final pulumi.Input<int>? replicationFactor;

  /// The user name used to identify the client on the host operating system. If `SIMPLE` is specified for `authentication_type`, this parameter is required.
  final pulumi.Input<String>? simpleUser;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  final pulumi.Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  LocationHdfsArgs({
    required this.agentArns,
    this.authenticationType,
    this.blockSize,
    this.kerberosKeytab,
    this.kerberosKeytabBase64,
    this.kerberosKrb5Conf,
    this.kerberosKrb5ConfBase64,
    this.kerberosPrincipal,
    this.kmsKeyProviderUri,
    required this.nameNodes,
    this.qopConfiguration,
    this.region,
    this.replicationFactor,
    this.simpleUser,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentArns'] = agentArns;
    final authenticationTypeValue = authenticationType;
    if (authenticationTypeValue != null) {
      map['authenticationType'] = authenticationTypeValue;
    }
    final blockSizeValue = blockSize;
    if (blockSizeValue != null) {
      map['blockSize'] = blockSizeValue;
    }
    final kerberosKeytabValue = kerberosKeytab;
    if (kerberosKeytabValue != null) {
      map['kerberosKeytab'] = kerberosKeytabValue;
    }
    final kerberosKeytabBase64Value = kerberosKeytabBase64;
    if (kerberosKeytabBase64Value != null) {
      map['kerberosKeytabBase64'] = kerberosKeytabBase64Value;
    }
    final kerberosKrb5ConfValue = kerberosKrb5Conf;
    if (kerberosKrb5ConfValue != null) {
      map['kerberosKrb5Conf'] = kerberosKrb5ConfValue;
    }
    final kerberosKrb5ConfBase64Value = kerberosKrb5ConfBase64;
    if (kerberosKrb5ConfBase64Value != null) {
      map['kerberosKrb5ConfBase64'] = kerberosKrb5ConfBase64Value;
    }
    final kerberosPrincipalValue = kerberosPrincipal;
    if (kerberosPrincipalValue != null) {
      map['kerberosPrincipal'] = kerberosPrincipalValue;
    }
    final kmsKeyProviderUriValue = kmsKeyProviderUri;
    if (kmsKeyProviderUriValue != null) {
      map['kmsKeyProviderUri'] = kmsKeyProviderUriValue;
    }
    map['nameNodes'] = pulumi.Input.mapInputValue<List<LocationHdfsNameNode>,
            List<Map<String, dynamic>>>(
        nameNodes,
        (value) =>
            pulumi.Input.encodeList<LocationHdfsNameNode, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final qopConfigurationValue = qopConfiguration;
    if (qopConfigurationValue != null) {
      map['qopConfiguration'] = pulumi.Input.mapOptionalInputValue<
              LocationHdfsQopConfiguration, Map<String, dynamic>>(
          qopConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationFactorValue = replicationFactor;
    if (replicationFactorValue != null) {
      map['replicationFactor'] = replicationFactorValue;
    }
    final simpleUserValue = simpleUser;
    if (simpleUserValue != null) {
      map['simpleUser'] = simpleUserValue;
    }
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LocationHdfsArgs.fromMap(Map<String, dynamic> map) {
    return LocationHdfsArgs(
      agentArns: pulumi.Input.asInput<List<String>>(map['agentArns']),
      authenticationType:
          pulumi.Input.asOptionalInput<String>(map['authenticationType']),
      blockSize: pulumi.Input.asOptionalInput<int>(map['blockSize']),
      kerberosKeytab:
          pulumi.Input.asOptionalInput<String>(map['kerberosKeytab']),
      kerberosKeytabBase64:
          pulumi.Input.asOptionalInput<String>(map['kerberosKeytabBase64']),
      kerberosKrb5Conf:
          pulumi.Input.asOptionalInput<String>(map['kerberosKrb5Conf']),
      kerberosKrb5ConfBase64:
          pulumi.Input.asOptionalInput<String>(map['kerberosKrb5ConfBase64']),
      kerberosPrincipal:
          pulumi.Input.asOptionalInput<String>(map['kerberosPrincipal']),
      kmsKeyProviderUri:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyProviderUri']),
      nameNodes:
          pulumi.Input.asInput<List<LocationHdfsNameNode>>(map['nameNodes']),
      qopConfiguration:
          pulumi.Input.asOptionalInput<LocationHdfsQopConfiguration>(
              map['qopConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationFactor:
          pulumi.Input.asOptionalInput<int>(map['replicationFactor']),
      simpleUser: pulumi.Input.asOptionalInput<String>(map['simpleUser']),
      subdirectory: pulumi.Input.asOptionalInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
