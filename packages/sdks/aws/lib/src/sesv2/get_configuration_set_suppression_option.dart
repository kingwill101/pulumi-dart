// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetSuppressionOption {
  /// A list that contains the reasons that email addresses are automatically added to the suppression list for your account.
  final pulumi.Input<List<String>> suppressedReasons;

  /// Creates a new [GetConfigurationSetSuppressionOption].
  /// [suppressedReasons] A list that contains the reasons that email addresses are automatically added to the suppression list for your account.
  GetConfigurationSetSuppressionOption({required this.suppressedReasons});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'suppressedReasons': suppressedReasons};
  }

  factory GetConfigurationSetSuppressionOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConfigurationSetSuppressionOption(
      suppressedReasons: pulumi.Input.fromValue(
        (map['suppressedReasons'] as List).cast<String>(),
      ),
    );
  }
}
