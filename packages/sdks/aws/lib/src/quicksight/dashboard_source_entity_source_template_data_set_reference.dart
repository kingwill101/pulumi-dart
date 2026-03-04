// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardSourceEntitySourceTemplateDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final pulumi.Input<String> dataSetArn;

  /// Dataset placeholder.
  final pulumi.Input<String> dataSetPlaceholder;

  /// Creates a new [DashboardSourceEntitySourceTemplateDataSetReference].
  /// [dataSetArn] Dataset Amazon Resource Name (ARN).
  /// [dataSetPlaceholder] Dataset placeholder.
  DashboardSourceEntitySourceTemplateDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': dataSetArn,
      'dataSetPlaceholder': dataSetPlaceholder,
    };
  }

  factory DashboardSourceEntitySourceTemplateDataSetReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardSourceEntitySourceTemplateDataSetReference(
      dataSetArn: pulumi.Input.fromValue(map['dataSetArn'] as String),
      dataSetPlaceholder: pulumi.Input.fromValue(
        map['dataSetPlaceholder'] as String,
      ),
    );
  }
}
