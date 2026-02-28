// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor {
  /// The amount of blue in the color as a value in the interval [0, 1].
  final double? blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  final double? green;

  /// The amount of red in the color as a value in the interval [0, 1].
  final double? red;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor].
  /// [blue] The amount of blue in the color as a value in the interval [0, 1].
  /// [green] The amount of green in the color as a value in the interval [0, 1].
  /// [red] The amount of red in the color as a value in the interval [0, 1].
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor({
    this.blue,
    this.green,
    this.red,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blueValue = blue;
    if (blueValue != null) {
      map['blue'] = blueValue;
    }
    final greenValue = green;
    if (greenValue != null) {
      map['green'] = greenValue;
    }
    final redValue = red;
    if (redValue != null) {
      map['red'] = redValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor(
      blue: map['blue'] == null ? null : map['blue'] as double,
      green: map['green'] == null ? null : map['green'] as double,
      red: map['red'] == null ? null : map['red'] as double,
    );
  }
}
