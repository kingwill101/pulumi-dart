// ignore_for_file: unused_element, unnecessary_cast


/// Inner health error model.
class InnerHealthErrorModelResponse {
  /// Gets or sets the error category.
  final String category;
  /// Gets or sets possible causes of the error.
  final String causes;
  /// Gets or sets the error code.
  final String code;
  /// Gets or sets the error creation time.
  final String creationTime;
  /// Gets or sets the health category.
  final String healthCategory;
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
      category: map['category'] as String,
      causes: map['causes'] as String,
      code: map['code'] as String,
      creationTime: map['creationTime'] as String,
      healthCategory: map['healthCategory'] as String,
      isCustomerResolvable: map['isCustomerResolvable'] as bool,
      message: map['message'] as String,
      recommendation: map['recommendation'] as String,
      severity: map['severity'] as String,
      source: map['source'] as String,
      summary: map['summary'] as String,
    );
  }
}

