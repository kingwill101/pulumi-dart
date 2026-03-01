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
  GetProviderActionOverviewStatusArgs({
    pulumi.Output<String>? type,
  }) :
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GetProviderActionOverviewStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderActionOverviewStatusArgs(
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

