// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Product Feature
class ProductFeatureResponse {
  /// The timestamp in UTC when the billing ends.
  final String billingEndDate;
  /// The timestamp in UTC when the billing starts.
  final String billingStartDate;
  /// The timestamp in UTC when the user disenrolled the feature.
  final String disenrollmentDate;
  /// The timestamp in UTC when the user enrolls the feature.
  final String enrollmentDate;
  /// The errors that were encountered during the feature enrollment or disenrollment.
  final ErrorDetailResponse error;
  /// Product feature name.
  final String? name;
  /// Indicates the current status of the product features.
  final String? subscriptionStatus;

  /// Creates a new [ProductFeatureResponse].
  /// [billingEndDate] The timestamp in UTC when the billing ends.
  /// [billingStartDate] The timestamp in UTC when the billing starts.
  /// [disenrollmentDate] The timestamp in UTC when the user disenrolled the feature.
  /// [enrollmentDate] The timestamp in UTC when the user enrolls the feature.
  /// [error] The errors that were encountered during the feature enrollment or disenrollment.
  /// [name] Product feature name.
  /// [subscriptionStatus] Indicates the current status of the product features.
  ProductFeatureResponse({
    required this.billingEndDate,
    required this.billingStartDate,
    required this.disenrollmentDate,
    required this.enrollmentDate,
    required this.error,
    this.name,
    this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingEndDate': billingEndDate,
      'billingStartDate': billingStartDate,
      'disenrollmentDate': disenrollmentDate,
      'enrollmentDate': enrollmentDate,
      'error': error.toMap(),
      'name': ?name,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory ProductFeatureResponse.fromMap(Map<String, dynamic> map) {
    return ProductFeatureResponse(
      billingEndDate: map['billingEndDate'] as String,
      billingStartDate: map['billingStartDate'] as String,
      disenrollmentDate: map['disenrollmentDate'] as String,
      enrollmentDate: map['enrollmentDate'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      subscriptionStatus: map['subscriptionStatus'] == null ? null : map['subscriptionStatus'] as String,
    );
  }
}

