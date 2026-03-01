// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_destination_args_doc}
/// Arguments for getPartnerDestination.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_destination_args_doc}
class GetPartnerDestinationArgs {
  /// Name of the partner destination.
  final pulumi.Input<String> partnerDestinationName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerDestinationArgs].
  /// [partnerDestinationName] Name of the partner destination.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerDestinationArgs({
    required pulumi.Output<String> partnerDestinationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      partnerDestinationName = pulumi.Input.asInput<String>(partnerDestinationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerDestinationName': partnerDestinationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerDestinationArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerDestinationArgs(
      partnerDestinationName: pulumi.Output.create<String>(map['partnerDestinationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

