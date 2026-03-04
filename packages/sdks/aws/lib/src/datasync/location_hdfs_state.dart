// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_hdfs_name_node.dart';
import 'location_hdfs_qop_configuration.dart';

/// Input properties used for looking up and filtering LocationHdfs resources.
class LocationHdfsState {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>>? agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;

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
  final pulumi.Input<List<LocationHdfsNameNode>>? nameNodes;

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

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;

  /// Creates a new [LocationHdfsState].
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [authenticationType] The type of authentication used to determine the identity of the user. Valid values are `SIMPLE` and `KERBEROS`.
  /// [blockSize] The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB).
  /// [kerberosKeytab] The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use `kerberos_keytab_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab_base64`) is required.
  /// [kerberosKeytabBase64] Use instead of `kerberos_keytab` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_keytab`) is required.
  /// [kerberosKrb5Conf] The krb5.conf file that contains the Kerberos configuration information. Use `kerberos_krb5_conf_base64` instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf_base64`) is required.
  /// [kerberosKrb5ConfBase64] Use instead of `kerberos_krb5_conf` to pass base64-encoded binary data directly. If `KERBEROS` is specified for `authentication_type`, this parameter (or `kerberos_krb5_conf`) is required.
  /// [kerberosPrincipal] The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for `authentication_type`, this parameter is required.
  /// [kmsKeyProviderUri] The URI of the HDFS cluster's Key Management Server (KMS).
  /// [nameNodes] The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  /// [qopConfiguration] The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If `qop_configuration` isn't specified, `rpc_protection` and `data_transfer_protection` default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationFactor] The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  /// [simpleUser] The user name used to identify the client on the host operating system. If `SIMPLE` is specified for `authentication_type`, this parameter is required.
  /// [subdirectory] A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  LocationHdfsState({
    this.agentArns,
    this.arn,
    this.authenticationType,
    this.blockSize,
    this.kerberosKeytab,
    this.kerberosKeytabBase64,
    this.kerberosKrb5Conf,
    this.kerberosKrb5ConfBase64,
    this.kerberosPrincipal,
    this.kmsKeyProviderUri,
    this.nameNodes,
    this.qopConfiguration,
    this.region,
    this.replicationFactor,
    this.simpleUser,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': ?agentArns,
      'arn': ?arn,
      'authenticationType': ?authenticationType,
      'blockSize': ?blockSize,
      'kerberosKeytab': ?kerberosKeytab,
      'kerberosKeytabBase64': ?kerberosKeytabBase64,
      'kerberosKrb5Conf': ?kerberosKrb5Conf,
      'kerberosKrb5ConfBase64': ?kerberosKrb5ConfBase64,
      'kerberosPrincipal': ?kerberosPrincipal,
      'kmsKeyProviderUri': ?kmsKeyProviderUri,
      'nameNodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<LocationHdfsNameNode>,
            List<Map<String, dynamic>>
          >(
            nameNodes,
            (value) =>
                pulumi.Input.encodeList<
                  LocationHdfsNameNode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'qopConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LocationHdfsQopConfiguration,
            Map<String, dynamic>
          >(qopConfiguration, (value) => value.toMap()),
      'region': ?region,
      'replicationFactor': ?replicationFactor,
      'simpleUser': ?simpleUser,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory LocationHdfsState.fromMap(Map<String, dynamic> map) {
    return LocationHdfsState(
      agentArns: (() {
        final guardedValue = map['agentArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blockSize: (() {
        final guardedValue = map['blockSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kerberosKeytab: (() {
        final guardedValue = map['kerberosKeytab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosKeytabBase64: (() {
        final guardedValue = map['kerberosKeytabBase64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosKrb5Conf: (() {
        final guardedValue = map['kerberosKrb5Conf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosKrb5ConfBase64: (() {
        final guardedValue = map['kerberosKrb5ConfBase64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosPrincipal: (() {
        final guardedValue = map['kerberosPrincipal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyProviderUri: (() {
        final guardedValue = map['kmsKeyProviderUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameNodes: (() {
        final guardedValue = map['nameNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LocationHdfsNameNode>(
            guardedValue,
            (value) => LocationHdfsNameNode.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      qopConfiguration: (() {
        final guardedValue = map['qopConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocationHdfsQopConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationFactor: (() {
        final guardedValue = map['replicationFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      simpleUser: (() {
        final guardedValue = map['simpleUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subdirectory: (() {
        final guardedValue = map['subdirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
