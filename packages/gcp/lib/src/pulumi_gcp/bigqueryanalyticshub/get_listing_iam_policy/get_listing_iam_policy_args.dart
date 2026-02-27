// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getListingIamPolicy.
class GetListingIamPolicyArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataExchangeId;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> listingId;

  /// The name of the location this data exchange listing.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetListingIamPolicyArgs({
    required this.dataExchangeId,
    required this.listingId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['listingId'] = listingId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetListingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetListingIamPolicyArgs(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      listingId: pulumi.Input.asInput<String>(map['listingId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
