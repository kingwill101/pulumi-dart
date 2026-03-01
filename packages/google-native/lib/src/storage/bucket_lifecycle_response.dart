// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_item_response.dart';

/// The bucket's lifecycle configuration. See lifecycle management for more information.
class BucketLifecycleResponse {
  /// A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  final List<BucketLifecycleRuleItemResponse> rule;

  /// Creates a new [BucketLifecycleResponse].
  /// [rule] A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  BucketLifecycleResponse({required this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule':
          pulumi.Input.encodeList<
            BucketLifecycleRuleItemResponse,
            Map<String, dynamic>
          >(rule, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleResponse.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleResponse(
      rule: pulumi.Input.decodeList<BucketLifecycleRuleItemResponse>(
        map['rule'],
        (value) => BucketLifecycleRuleItemResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
