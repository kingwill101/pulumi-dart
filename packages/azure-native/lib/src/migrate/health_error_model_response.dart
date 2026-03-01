// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inner_health_error_model_response.dart';

/// Health error model.
class HealthErrorModelResponse {
  /// Gets or sets the list of affected resource correlation Ids. This can be used to
  /// uniquely identify the count of items affected by a specific category and severity
  /// as well as count of item affected by an specific issue.
  final List<String>? affectedResourceCorrelationIds;
  /// Gets or sets the type of affected resource type.
  final String? affectedResourceType;
  /// Gets or sets the error category.
  final String category;
  /// Gets or sets possible causes of the error.
  final String causes;
  /// Gets or sets a list of child health errors associated with this error.
  final List<InnerHealthErrorModelResponse>? childErrors;
  /// Gets or sets the error code.
  final String code;
  /// Gets or sets the error creation time.
  final String creationTime;
  /// Gets or sets the health category.
  final String healthCategory;
  /// Gets the ID.
  final String id;
  /// Gets or sets a value indicating whether the error is customer resolvable.
  final bool isCustomerResolvable;
  /// Gets or sets the error message.
  final String message;
  /// Gets or sets recommended action to resolve the error.
  final String recommendation;
  /// Gets or sets the error severity.
  final String severity;
  /// Gets or sets the error source.
  final String source;
  /// Gets or sets the error summary.
  final String summary;

  /// Creates a new [HealthErrorModelResponse].
  /// [affectedResourceCorrelationIds] Gets or sets the list of affected resource correlation Ids. This can be used to
  /// [affectedResourceType] Gets or sets the type of affected resource type.
  /// [category] Gets or sets the error category.
  /// [causes] Gets or sets possible causes of the error.
  /// [childErrors] Gets or sets a list of child health errors associated with this error.
  /// [code] Gets or sets the error code.
  /// [creationTime] Gets or sets the error creation time.
  /// [healthCategory] Gets or sets the health category.
  /// [id] Gets the ID.
  /// [isCustomerResolvable] Gets or sets a value indicating whether the error is customer resolvable.
  /// [message] Gets or sets the error message.
  /// [recommendation] Gets or sets recommended action to resolve the error.
  /// [severity] Gets or sets the error severity.
  /// [source] Gets or sets the error source.
  /// [summary] Gets or sets the error summary.
  HealthErrorModelResponse({
    this.affectedResourceCorrelationIds,
    this.affectedResourceType,
    required this.category,
    required this.causes,
    this.childErrors,
    required this.code,
    required this.creationTime,
    required this.healthCategory,
    required this.id,
    required this.isCustomerResolvable,
    required this.message,
    required this.recommendation,
    required this.severity,
    required this.source,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedResourceCorrelationIds': ?affectedResourceCorrelationIds,
      'affectedResourceType': ?affectedResourceType,
      'category': category,
      'causes': causes,
      'childErrors': ?childErrors == null ? null : pulumi.Input.encodeList<InnerHealthErrorModelResponse, Map<String, dynamic>>(childErrors!, (value) => value.toMap()),
      'code': code,
      'creationTime': creationTime,
      'healthCategory': healthCategory,
      'id': id,
      'isCustomerResolvable': isCustomerResolvable,
      'message': message,
      'recommendation': recommendation,
      'severity': severity,
      'source': source,
      'summary': summary,
    };
  }

  factory HealthErrorModelResponse.fromMap(Map<String, dynamic> map) {
    return HealthErrorModelResponse(
      affectedResourceCorrelationIds: map['affectedResourceCorrelationIds'] == null ? null : (map['affectedResourceCorrelationIds'] as List).cast<String>(),
      affectedResourceType: map['affectedResourceType'] == null ? null : map['affectedResourceType'] as String,
      category: map['category'] as String,
      causes: map['causes'] as String,
      childErrors: map['childErrors'] == null ? null : pulumi.Input.decodeList<InnerHealthErrorModelResponse>(map['childErrors'], (value) => InnerHealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] as String,
      creationTime: map['creationTime'] as String,
      healthCategory: map['healthCategory'] as String,
      id: map['id'] as String,
      isCustomerResolvable: map['isCustomerResolvable'] as bool,
      message: map['message'] as String,
      recommendation: map['recommendation'] as String,
      severity: map['severity'] as String,
      source: map['source'] as String,
      summary: map['summary'] as String,
    );
  }
}

