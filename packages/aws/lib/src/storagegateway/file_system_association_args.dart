// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_association_cache_attributes.dart';

/// {@template pulumi_storagegateway_file_system_association_file_system_association_args_doc}
/// The set of arguments for FileSystemAssociation.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_file_system_association_file_system_association_args_doc}
class FileSystemAssociationArgs {
  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  final pulumi.Input<String>? auditDestinationArn;

  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<FileSystemAssociationCacheAttributes>? cacheAttributes;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  final pulumi.Input<String> locationArn;

  /// The password of the user credential.
  final pulumi.Input<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  final pulumi.Input<String> username;

  /// Creates a new [FileSystemAssociationArgs].
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for the audit logs.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [locationArn] The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  /// [password] The password of the user credential.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [username] The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  FileSystemAssociationArgs({
    String? auditDestinationArn,
    FileSystemAssociationCacheAttributes? cacheAttributes,
    required String gatewayArn,
    required String locationArn,
    required String password,
    String? region,
    Map<String, String>? tags,
    required String username,
  })  : auditDestinationArn =
            pulumi.Input.asOptionalInput<String>(auditDestinationArn),
        cacheAttributes =
            pulumi.Input.asOptionalInput<FileSystemAssociationCacheAttributes>(
                cacheAttributes),
        gatewayArn = pulumi.Input.asInput<String>(gatewayArn),
        locationArn = pulumi.Input.asInput<String>(locationArn),
        password = pulumi.Input.asInput<String>(password),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditDestinationArnValue = auditDestinationArn;
    if (auditDestinationArnValue != null) {
      map['auditDestinationArn'] = auditDestinationArnValue;
    }
    final cacheAttributesValue = cacheAttributes;
    if (cacheAttributesValue != null) {
      map['cacheAttributes'] = pulumi.Input.mapOptionalInputValue<
          FileSystemAssociationCacheAttributes,
          Map<String, dynamic>>(cacheAttributesValue, (value) => value.toMap());
    }
    map['gatewayArn'] = gatewayArn;
    map['locationArn'] = locationArn;
    map['password'] = password;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['username'] = username;
    return map;
  }

  factory FileSystemAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationArgs(
      auditDestinationArn: map['auditDestinationArn'] == null
          ? null
          : map['auditDestinationArn'] as String,
      cacheAttributes: map['cacheAttributes'] == null
          ? null
          : FileSystemAssociationCacheAttributes.fromMap(
              (map['cacheAttributes'] as Map).cast<String, dynamic>()),
      gatewayArn: map['gatewayArn'] as String,
      locationArn: map['locationArn'] as String,
      password: map['password'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      username: map['username'] as String,
    );
  }
}
