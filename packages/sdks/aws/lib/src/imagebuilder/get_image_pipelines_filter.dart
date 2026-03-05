// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagePipelinesFilter {
  /// Name of the filter field. Valid values can be found in the [Image Builder ListImagePipelines API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListImagePipelines.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetImagePipelinesFilter].
  /// [name] Name of the filter field. Valid values can be found in the [Image Builder ListImagePipelines API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListImagePipelines.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetImagePipelinesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetImagePipelinesFilter.fromMap(Map<String, dynamic> map) {
    return GetImagePipelinesFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

