// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_configuration_args_doc}
/// Arguments for getPartnerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_configuration_args_doc}
class GetPartnerConfigurationArgs {
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerConfigurationArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerConfigurationArgs({
    required String resourceGroupName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerConfigurationArgs(
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

