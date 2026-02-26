// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../location_hdfs_name_node/location_hdfs_name_node.dart';
import '../location_hdfs_qop_configuration/location_hdfs_qop_configuration.dart';

/// The set of arguments for LocationHdfs.
class LocationHdfsArgs {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final Input<List<String>> agentArns;

  /// The type of authentication used to determine the identity of the user. Valid values are `SIMPLE` and `KERBEROS`.
  final Input<String>? authenticationType;

  /// The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB).
  final Input<int>? blockSize;

  /// The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. Use <span pulumi-lang-nodejs="`kerberosKeytabBase64`" pulumi-lang-dotnet="`KerberosKeytabBase64`" pulumi-lang-go="`kerberosKeytabBase64`" pulumi-lang-python="`kerberos_keytab_base64`" pulumi-lang-yaml="`kerberosKeytabBase64`" pulumi-lang-java="`kerberosKeytabBase64`">`kerberos_keytab_base64`</span> instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKeytabBase64`" pulumi-lang-dotnet="`KerberosKeytabBase64`" pulumi-lang-go="`kerberosKeytabBase64`" pulumi-lang-python="`kerberos_keytab_base64`" pulumi-lang-yaml="`kerberosKeytabBase64`" pulumi-lang-java="`kerberosKeytabBase64`">`kerberos_keytab_base64`</span>) is required.
  final Input<String>? kerberosKeytab;

  /// Use instead of <span pulumi-lang-nodejs="`kerberosKeytab`" pulumi-lang-dotnet="`KerberosKeytab`" pulumi-lang-go="`kerberosKeytab`" pulumi-lang-python="`kerberos_keytab`" pulumi-lang-yaml="`kerberosKeytab`" pulumi-lang-java="`kerberosKeytab`">`kerberos_keytab`</span> to pass base64-encoded binary data directly. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKeytab`" pulumi-lang-dotnet="`KerberosKeytab`" pulumi-lang-go="`kerberosKeytab`" pulumi-lang-python="`kerberos_keytab`" pulumi-lang-yaml="`kerberosKeytab`" pulumi-lang-java="`kerberosKeytab`">`kerberos_keytab`</span>) is required.
  final Input<String>? kerberosKeytabBase64;

  /// The krb5.conf file that contains the Kerberos configuration information. Use <span pulumi-lang-nodejs="`kerberosKrb5ConfBase64`" pulumi-lang-dotnet="`KerberosKrb5ConfBase64`" pulumi-lang-go="`kerberosKrb5ConfBase64`" pulumi-lang-python="`kerberos_krb5_conf_base64`" pulumi-lang-yaml="`kerberosKrb5ConfBase64`" pulumi-lang-java="`kerberosKrb5ConfBase64`">`kerberos_krb5_conf_base64`</span> instead whenever the value is not a valid UTF-8 string. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKrb5ConfBase64`" pulumi-lang-dotnet="`KerberosKrb5ConfBase64`" pulumi-lang-go="`kerberosKrb5ConfBase64`" pulumi-lang-python="`kerberos_krb5_conf_base64`" pulumi-lang-yaml="`kerberosKrb5ConfBase64`" pulumi-lang-java="`kerberosKrb5ConfBase64`">`kerberos_krb5_conf_base64`</span>) is required.
  final Input<String>? kerberosKrb5Conf;

  /// Use instead of <span pulumi-lang-nodejs="`kerberosKrb5Conf`" pulumi-lang-dotnet="`KerberosKrb5Conf`" pulumi-lang-go="`kerberosKrb5Conf`" pulumi-lang-python="`kerberos_krb5_conf`" pulumi-lang-yaml="`kerberosKrb5Conf`" pulumi-lang-java="`kerberosKrb5Conf`">`kerberos_krb5_conf`</span> to pass base64-encoded binary data directly. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter (or <span pulumi-lang-nodejs="`kerberosKrb5Conf`" pulumi-lang-dotnet="`KerberosKrb5Conf`" pulumi-lang-go="`kerberosKrb5Conf`" pulumi-lang-python="`kerberos_krb5_conf`" pulumi-lang-yaml="`kerberosKrb5Conf`" pulumi-lang-java="`kerberosKrb5Conf`">`kerberos_krb5_conf`</span>) is required.
  final Input<String>? kerberosKrb5ConfBase64;

  /// The Kerberos principal with access to the files and folders on the HDFS cluster. If `KERBEROS` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter is required.
  final Input<String>? kerberosPrincipal;

  /// The URI of the HDFS cluster's Key Management Server (KMS).
  final Input<String>? kmsKeyProviderUri;

  /// The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below.
  final Input<List<LocationHdfsNameNode>> nameNodes;

  /// The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If <span pulumi-lang-nodejs="`qopConfiguration`" pulumi-lang-dotnet="`QopConfiguration`" pulumi-lang-go="`qopConfiguration`" pulumi-lang-python="`qop_configuration`" pulumi-lang-yaml="`qopConfiguration`" pulumi-lang-java="`qopConfiguration`">`qop_configuration`</span> isn't specified, <span pulumi-lang-nodejs="`rpcProtection`" pulumi-lang-dotnet="`RpcProtection`" pulumi-lang-go="`rpcProtection`" pulumi-lang-python="`rpc_protection`" pulumi-lang-yaml="`rpcProtection`" pulumi-lang-java="`rpcProtection`">`rpc_protection`</span> and <span pulumi-lang-nodejs="`dataTransferProtection`" pulumi-lang-dotnet="`DataTransferProtection`" pulumi-lang-go="`dataTransferProtection`" pulumi-lang-python="`data_transfer_protection`" pulumi-lang-yaml="`dataTransferProtection`" pulumi-lang-java="`dataTransferProtection`">`data_transfer_protection`</span> default to `PRIVACY`. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below.
  final Input<LocationHdfsQopConfiguration>? qopConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes.
  final Input<int>? replicationFactor;

  /// The user name used to identify the client on the host operating system. If `SIMPLE` is specified for <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, this parameter is required.
  final Input<String>? simpleUser;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  final Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['nameNodes'] = Input.mapInputValue<List<LocationHdfsNameNode>,
            List<Map<String, dynamic>>>(
        nameNodes,
        (value) => Input.encodeList<LocationHdfsNameNode, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final qopConfigurationValue = qopConfiguration;
    if (qopConfigurationValue != null) {
      map['qopConfiguration'] = Input.mapOptionalInputValue<
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
      agentArns: Input.asInput<List<String>>(map['agentArns']),
      authenticationType:
          Input.asOptionalInput<String>(map['authenticationType']),
      blockSize: Input.asOptionalInput<int>(map['blockSize']),
      kerberosKeytab: Input.asOptionalInput<String>(map['kerberosKeytab']),
      kerberosKeytabBase64:
          Input.asOptionalInput<String>(map['kerberosKeytabBase64']),
      kerberosKrb5Conf: Input.asOptionalInput<String>(map['kerberosKrb5Conf']),
      kerberosKrb5ConfBase64:
          Input.asOptionalInput<String>(map['kerberosKrb5ConfBase64']),
      kerberosPrincipal:
          Input.asOptionalInput<String>(map['kerberosPrincipal']),
      kmsKeyProviderUri:
          Input.asOptionalInput<String>(map['kmsKeyProviderUri']),
      nameNodes: Input.asInput<List<LocationHdfsNameNode>>(map['nameNodes']),
      qopConfiguration: Input.asOptionalInput<LocationHdfsQopConfiguration>(
          map['qopConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationFactor: Input.asOptionalInput<int>(map['replicationFactor']),
      simpleUser: Input.asOptionalInput<String>(map['simpleUser']),
      subdirectory: Input.asOptionalInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
