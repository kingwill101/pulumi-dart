// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_server_side_encryption_configuration_rule.dart';

class BucketV2ServerSideEncryptionConfiguration {
  /// Single object for server-side encryption by default configuration. (documented below)
  final pulumi.Input<List<BucketV2ServerSideEncryptionConfigurationRule>> rules;

  /// Creates a new [BucketV2ServerSideEncryptionConfiguration].
  /// [rules] Single object for server-side encryption by default configuration. (documented below)
  BucketV2ServerSideEncryptionConfiguration({required this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules':
          pulumi.Input.mapInputValue<
            List<BucketV2ServerSideEncryptionConfigurationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2ServerSideEncryptionConfigurationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketV2ServerSideEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketV2ServerSideEncryptionConfiguration(
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<BucketV2ServerSideEncryptionConfigurationRule>(
          map['rules']!,
          (value) => BucketV2ServerSideEncryptionConfigurationRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
