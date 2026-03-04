// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_provider_action_overview_status_args_doc}
/// Arguments for getProviderActionOverviewStatus.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_provider_action_overview_status_args_doc}
class GetProviderActionOverviewStatusArgs {
  /// The resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [GetProviderActionOverviewStatusArgs].
  /// [type] The resource type.
  GetProviderActionOverviewStatusArgs({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory GetProviderActionOverviewStatusArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetProviderActionOverviewStatusArgs(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
