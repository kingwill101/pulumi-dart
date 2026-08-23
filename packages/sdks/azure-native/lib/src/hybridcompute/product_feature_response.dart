// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Product Feature
class ProductFeatureResponse {
  /// The timestamp in UTC when the billing ends.
  final pulumi.Input<String> billingEndDate;
  /// The timestamp in UTC when the billing starts.
  final pulumi.Input<String> billingStartDate;
  /// The timestamp in UTC when the user disenrolled the feature.
  final pulumi.Input<String> disenrollmentDate;
  /// The timestamp in UTC when the user enrolls the feature.
  final pulumi.Input<String> enrollmentDate;
  /// The errors that were encountered during the feature enrollment or disenrollment.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Product feature name.
  final pulumi.Input<String>? name;
  /// Indicates the current status of the product features.
  final pulumi.Input<String>? subscriptionStatus;

  /// Creates a new [ProductFeatureResponse].
  /// [billingEndDate] The timestamp in UTC when the billing ends.
  /// [billingStartDate] The timestamp in UTC when the billing starts.
  /// [disenrollmentDate] The timestamp in UTC when the user disenrolled the feature.
  /// [enrollmentDate] The timestamp in UTC when the user enrolls the feature.
  /// [error] The errors that were encountered during the feature enrollment or disenrollment.
  /// [name] Product feature name.
  /// [subscriptionStatus] Indicates the current status of the product features.
  const ProductFeatureResponse({
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
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'name': ?name,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory ProductFeatureResponse.fromMap(Map<String, dynamic> map) {
    return ProductFeatureResponse(
      billingEndDate: pulumi.Input.fromValue(map['billingEndDate'] as String),
      billingStartDate: pulumi.Input.fromValue(map['billingStartDate'] as String),
      disenrollmentDate: pulumi.Input.fromValue(map['disenrollmentDate'] as String),
      enrollmentDate: pulumi.Input.fromValue(map['enrollmentDate'] as String),
      error: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionStatus: (() { final guardedValue = map['subscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
