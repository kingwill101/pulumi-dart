// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Inner health error model.
class InnerHealthErrorModelResponse {
  /// Gets or sets the error category.
  final pulumi.Input<String> category;

  /// Gets or sets possible causes of the error.
  final pulumi.Input<String> causes;

  /// Gets or sets the error code.
  final pulumi.Input<String> code;

  /// Gets or sets the error creation time.
  final pulumi.Input<String> creationTime;

  /// Gets or sets the health category.
  final pulumi.Input<String> healthCategory;

  /// Gets or sets a value indicating whether the error is customer resolvable.
  final pulumi.Input<bool> isCustomerResolvable;

  /// Gets or sets the error message.
  final pulumi.Input<String> message;

  /// Gets or sets recommended action to resolve the error.
  final pulumi.Input<String> recommendation;

  /// Gets or sets the error severity.
  final pulumi.Input<String> severity;

  /// Gets or sets the error source.
  final pulumi.Input<String> source;

  /// Gets or sets the error summary.
  final pulumi.Input<String> summary;

  /// Creates a new [InnerHealthErrorModelResponse].
  /// [category] Gets or sets the error category.
  /// [causes] Gets or sets possible causes of the error.
  /// [code] Gets or sets the error code.
  /// [creationTime] Gets or sets the error creation time.
  /// [healthCategory] Gets or sets the health category.
  /// [isCustomerResolvable] Gets or sets a value indicating whether the error is customer resolvable.
  /// [message] Gets or sets the error message.
  /// [recommendation] Gets or sets recommended action to resolve the error.
  /// [severity] Gets or sets the error severity.
  /// [source] Gets or sets the error source.
  /// [summary] Gets or sets the error summary.
  InnerHealthErrorModelResponse({
    required this.category,
    required this.causes,
    required this.code,
    required this.creationTime,
    required this.healthCategory,
    required this.isCustomerResolvable,
    required this.message,
    required this.recommendation,
    required this.severity,
    required this.source,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'causes': causes,
      'code': code,
      'creationTime': creationTime,
      'healthCategory': healthCategory,
      'isCustomerResolvable': isCustomerResolvable,
      'message': message,
      'recommendation': recommendation,
      'severity': severity,
      'source': source,
      'summary': summary,
    };
  }

  factory InnerHealthErrorModelResponse.fromMap(Map<String, dynamic> map) {
    return InnerHealthErrorModelResponse(
      category: pulumi.Input.fromValue(map['category'] as String),
      causes: pulumi.Input.fromValue(map['causes'] as String),
      code: pulumi.Input.fromValue(map['code'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      healthCategory: pulumi.Input.fromValue(map['healthCategory'] as String),
      isCustomerResolvable: pulumi.Input.fromValue(
        map['isCustomerResolvable'] as bool,
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      recommendation: pulumi.Input.fromValue(map['recommendation'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
    );
  }
}
