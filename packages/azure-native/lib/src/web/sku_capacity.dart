// ignore_for_file: unused_element, unnecessary_cast


/// Description of the App Service plan scale options.
class SkuCapacity {
  /// Default number of workers for this App Service plan SKU.
  final int? default_;
  /// Maximum number of Elastic workers for this App Service plan SKU.
  final int? elasticMaximum;
  /// Maximum number of workers for this App Service plan SKU.
  final int? maximum;
  /// Minimum number of workers for this App Service plan SKU.
  final int? minimum;
  /// Available scale configurations for an App Service plan.
  final String? scaleType;

  /// Creates a new [SkuCapacity].
  /// [default_] Default number of workers for this App Service plan SKU.
  /// [elasticMaximum] Maximum number of Elastic workers for this App Service plan SKU.
  /// [maximum] Maximum number of workers for this App Service plan SKU.
  /// [minimum] Minimum number of workers for this App Service plan SKU.
  /// [scaleType] Available scale configurations for an App Service plan.
  SkuCapacity({
    this.default_,
    this.elasticMaximum,
    this.maximum,
    this.minimum,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'elasticMaximum': ?elasticMaximum,
      'maximum': ?maximum,
      'minimum': ?minimum,
      'scaleType': ?scaleType,
    };
  }

  factory SkuCapacity.fromMap(Map<String, dynamic> map) {
    return SkuCapacity(
      default_: map['default'] == null ? null : map['default'] as int,
      elasticMaximum: map['elasticMaximum'] == null ? null : map['elasticMaximum'] as int,
      maximum: map['maximum'] == null ? null : map['maximum'] as int,
      minimum: map['minimum'] == null ? null : map['minimum'] as int,
      scaleType: map['scaleType'] == null ? null : map['scaleType'] as String,
    );
  }
}

