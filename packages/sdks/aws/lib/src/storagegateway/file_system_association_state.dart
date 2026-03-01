// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_association_cache_attributes.dart';

/// Input properties used for looking up and filtering FileSystemAssociation resources.
class FileSystemAssociationState {
  /// Amazon Resource Name (ARN) of the newly created file system association.
  final pulumi.Input<String>? arn;
  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  final pulumi.Input<String>? auditDestinationArn;
  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<FileSystemAssociationCacheAttributes>? cacheAttributes;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? gatewayArn;
  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  final pulumi.Input<String>? locationArn;
  /// The password of the user credential.
  final pulumi.Input<String>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  final pulumi.Input<String>? username;

  /// Creates a new [FileSystemAssociationState].
  /// [arn] Amazon Resource Name (ARN) of the newly created file system association.
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for the audit logs.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [locationArn] The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  /// [password] The password of the user credential.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [username] The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  FileSystemAssociationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? auditDestinationArn,
    pulumi.Output<FileSystemAssociationCacheAttributes>? cacheAttributes,
    pulumi.Output<String>? gatewayArn,
    pulumi.Output<String>? locationArn,
    pulumi.Output<String>? password,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? username,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      auditDestinationArn = pulumi.Input.asOptionalInput<String>(auditDestinationArn),
      cacheAttributes = pulumi.Input.asOptionalInput<FileSystemAssociationCacheAttributes>(cacheAttributes),
      gatewayArn = pulumi.Input.asOptionalInput<String>(gatewayArn),
      locationArn = pulumi.Input.asOptionalInput<String>(locationArn),
      password = pulumi.Input.asOptionalInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'auditDestinationArn': ?auditDestinationArn,
      'cacheAttributes': ?pulumi.Input.mapOptionalInputValue<FileSystemAssociationCacheAttributes, Map<String, dynamic>>(cacheAttributes, (value) => value.toMap()),
      'gatewayArn': ?gatewayArn,
      'locationArn': ?locationArn,
      'password': ?password,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'username': ?username,
    };
  }

  factory FileSystemAssociationState.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      auditDestinationArn: map['auditDestinationArn'] == null ? null : pulumi.Output.create<String>(map['auditDestinationArn'] as String),
      cacheAttributes: map['cacheAttributes'] == null ? null : pulumi.Output.create<FileSystemAssociationCacheAttributes>(FileSystemAssociationCacheAttributes.fromMap((map['cacheAttributes'] as Map).cast<String, dynamic>())),
      gatewayArn: map['gatewayArn'] == null ? null : pulumi.Output.create<String>(map['gatewayArn'] as String),
      locationArn: map['locationArn'] == null ? null : pulumi.Output.create<String>(map['locationArn'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

