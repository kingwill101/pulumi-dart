// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1_get_data_exchange_listing_iam_policy_args_doc}
/// Arguments for getDataExchangeListingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1_get_data_exchange_listing_iam_policy_args_doc}
class GetDataExchangeListingIamPolicyArgs {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> listingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeListingIamPolicyArgs].
  /// [dataExchangeId] Required.
  /// [listingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataExchangeListingIamPolicyArgs({
    required String dataExchangeId,
    required String listingId,
    required String location,
    String? project,
  }) :
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      listingId = pulumi.Input.asInput<String>(listingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'listingId': listingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataExchangeListingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeListingIamPolicyArgs(
      dataExchangeId: map['dataExchangeId'] as String,
      listingId: map['listingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

