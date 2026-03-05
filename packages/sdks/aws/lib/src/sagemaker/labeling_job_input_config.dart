// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_input_config_data_attributes.dart';
import 'labeling_job_input_config_data_source.dart';

class LabelingJobInputConfig {
  /// Attributes of the data. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfigDataAttributes>? dataAttributes;
  /// Location of the input data.. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfigDataSource> dataSource;

  /// Creates a new [LabelingJobInputConfig].
  /// [dataAttributes] Attributes of the data. Fields are documented below.
  /// [dataSource] Location of the input data.. Fields are documented below.
  LabelingJobInputConfig({
    this.dataAttributes,
    required this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAttributes': ?pulumi.Input.mapOptionalInputValue<LabelingJobInputConfigDataAttributes, Map<String, dynamic>>(dataAttributes, (value) => value.toMap()),
      'dataSource': pulumi.Input.mapInputValue<LabelingJobInputConfigDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
    };
  }

  factory LabelingJobInputConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfig(
      dataAttributes: (() { final guardedValue = map['dataAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobInputConfigDataAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSource: pulumi.Input.fromValue(LabelingJobInputConfigDataSource.fromMap((map['dataSource']! as Map).cast<String, dynamic>())),
    );
  }
}

