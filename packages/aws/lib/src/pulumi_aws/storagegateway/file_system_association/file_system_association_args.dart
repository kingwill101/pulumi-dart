// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../file_system_association_cache_attributes/file_system_association_cache_attributes.dart';

/// The set of arguments for FileSystemAssociation.
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

  FileSystemAssociationArgs({
    this.auditDestinationArn,
    this.cacheAttributes,
    required this.gatewayArn,
    required this.locationArn,
    required this.password,
    this.region,
    this.tags,
    required this.username,
  });

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
      auditDestinationArn:
          pulumi.Input.asOptionalInput<String>(map['auditDestinationArn']),
      cacheAttributes:
          pulumi.Input.asOptionalInput<FileSystemAssociationCacheAttributes>(
              map['cacheAttributes']),
      gatewayArn: pulumi.Input.asInput<String>(map['gatewayArn']),
      locationArn: pulumi.Input.asInput<String>(map['locationArn']),
      password: pulumi.Input.asInput<String>(map['password']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}
