// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_inquiry_details.dart';

/// Details about inquired protectable items under a given container.
class InquiryInfo {
  /// Inquiry Details which will have workload specific details.
  /// For e.g. - For SQL and oracle this will contain different details.
  final List<WorkloadInquiryDetails>? inquiryDetails;
  /// Inquiry Status for this container such as
  /// InProgress | Failed | Succeeded
  final String? status;

  /// Creates a new [InquiryInfo].
  /// [inquiryDetails] Inquiry Details which will have workload specific details.
  /// [status] Inquiry Status for this container such as
  InquiryInfo({
    this.inquiryDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inquiryDetails': ?inquiryDetails == null ? null : pulumi.Input.encodeList<WorkloadInquiryDetails, Map<String, dynamic>>(inquiryDetails!, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory InquiryInfo.fromMap(Map<String, dynamic> map) {
    return InquiryInfo(
      inquiryDetails: map['inquiryDetails'] == null ? null : pulumi.Input.decodeList<WorkloadInquiryDetails>(map['inquiryDetails'], (value) => WorkloadInquiryDetails.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

