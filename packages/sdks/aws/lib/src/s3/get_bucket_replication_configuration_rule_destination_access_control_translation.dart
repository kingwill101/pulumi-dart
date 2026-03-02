// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation {
  final pulumi.Input<String> owner;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation].
  /// [owner] Required.
  GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': owner,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation(
      owner: (map['owner'] as String).input(),
    );
  }
}

