// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginGroupFailoverCriteria {
  /// List of HTTP status codes for the origin group.
  final pulumi.Input<List<int>> statusCodes;

  /// Creates a new [DistributionOriginGroupFailoverCriteria].
  /// [statusCodes] List of HTTP status codes for the origin group.
  DistributionOriginGroupFailoverCriteria({required this.statusCodes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'statusCodes': statusCodes};
  }

  factory DistributionOriginGroupFailoverCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionOriginGroupFailoverCriteria(
      statusCodes: pulumi.Input.fromValue(
        (map['statusCodes'] as List).cast<int>(),
      ),
    );
  }
}
