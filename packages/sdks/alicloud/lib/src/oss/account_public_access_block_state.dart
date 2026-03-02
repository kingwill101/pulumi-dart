// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPublicAccessBlock resources.
class AccountPublicAccessBlockState {
  /// Whether or not AlibabaCloud OSS should block public bucket policies for buckets in this account is enabled.
  final pulumi.Input<bool>? blockPublicAccess;

  /// Creates a new [AccountPublicAccessBlockState].
  /// [blockPublicAccess] Whether or not AlibabaCloud OSS should block public bucket policies for buckets in this account is enabled.
  AccountPublicAccessBlockState({
    this.blockPublicAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': ?blockPublicAccess,
    };
  }

  factory AccountPublicAccessBlockState.fromMap(Map<String, dynamic> map) {
    return AccountPublicAccessBlockState(
      blockPublicAccess: map['blockPublicAccess'] == null ? null : (map['blockPublicAccess']! as bool).input(),
    );
  }
}

