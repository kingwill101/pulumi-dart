// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../file_system_association_cache_attributes/file_system_association_cache_attributes.dart';

/// The set of arguments for FileSystemAssociation.
class FileSystemAssociationArgs {
  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  final Input<String>? auditDestinationArn;

  /// Refresh cache information. see Cache Attributes for more details.
  final Input<FileSystemAssociationCacheAttributes>? cacheAttributes;

  /// The Amazon Resource Name (ARN) of the gateway.
  final Input<String> gatewayArn;

  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  final Input<String> locationArn;

  /// The password of the user credential.
  final Input<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  final Input<String> username;

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
      map['cacheAttributes'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<String>(map['auditDestinationArn']),
      cacheAttributes:
          Input.asOptionalInput<FileSystemAssociationCacheAttributes>(
              map['cacheAttributes']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      locationArn: Input.asInput<String>(map['locationArn']),
      password: Input.asInput<String>(map['password']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      username: Input.asInput<String>(map['username']),
    );
  }
}
