// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_trust_store_get_trust_store_args_doc}
/// Arguments for getTrustStore.
/// {@endtemplate}
/// {@macro pulumi_lb_get_trust_store_get_trust_store_args_doc}
class GetTrustStoreArgs {
  /// Full ARN of the trust store.
  final pulumi.Input<String>? arn;

  /// Unique name of the trust store.
  ///
  /// &gt; **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetTrustStoreArgs].
  /// [arn] Full ARN of the trust store.
  /// [name] Unique name of the trust store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetTrustStoreArgs({this.arn, this.name, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'name': ?name, 'region': ?region};
  }

  factory GetTrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustStoreArgs(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
