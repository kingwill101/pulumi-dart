// ignore_for_file: unused_element, unnecessary_cast

class FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd {
  /// The fractional portion, in cents, of the amount. Valid value range between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`99`" pulumi-lang-dotnet="`99`" pulumi-lang-go="`99`" pulumi-lang-python="`99`" pulumi-lang-yaml="`99`" pulumi-lang-java="`99`">`99`</span>.
  final int? cents;

  /// The whole number of dollars in the amount. Valid value range between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>.
  final int? dollars;

  /// Fractions of a cent, in tenths. Valid value range between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`9`" pulumi-lang-dotnet="`9`" pulumi-lang-go="`9`" pulumi-lang-python="`9`" pulumi-lang-yaml="`9`" pulumi-lang-java="`9`">`9`</span>.
  final int? tenthFractionsOfACent;

  FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final centsValue = cents;
    if (centsValue != null) {
      map['cents'] = centsValue;
    }
    final dollarsValue = dollars;
    if (dollarsValue != null) {
      map['dollars'] = dollarsValue;
    }
    final tenthFractionsOfACentValue = tenthFractionsOfACent;
    if (tenthFractionsOfACentValue != null) {
      map['tenthFractionsOfACent'] = tenthFractionsOfACentValue;
    }
    return map;
  }

  factory FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd.fromMap(
      Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd(
      cents: map['cents'] == null ? null : map['cents'] as int,
      dollars: map['dollars'] == null ? null : map['dollars'] as int,
      tenthFractionsOfACent: map['tenthFractionsOfACent'] == null
          ? null
          : map['tenthFractionsOfACent'] as int,
    );
  }
}
