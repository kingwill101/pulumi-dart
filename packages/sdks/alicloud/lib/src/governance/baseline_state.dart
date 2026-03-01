// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_baseline_item.dart';

/// Input properties used for looking up and filtering Baseline resources.
class BaselineState {
  /// List of baseline items.
  ///
  /// You can invoke [ListAccountFactoryBaselineItems](https://next.api.aliyun.com/document/governance/2021-01-20/ListAccountFactoryBaselineItems) to get a list of account factory baseline items supported by the Cloud Governance Center. See `baseline_items` below.
  final pulumi.Input<List<BaselineBaselineItem>>? baselineItems;
  /// Baseline Name.
  final pulumi.Input<String>? baselineName;
  /// Baseline Description.
  final pulumi.Input<String>? description;

  /// Creates a new [BaselineState].
  /// [baselineItems] List of baseline items.
  /// [baselineName] Baseline Name.
  /// [description] Baseline Description.
  BaselineState({
    pulumi.Output<List<BaselineBaselineItem>>? baselineItems,
    pulumi.Output<String>? baselineName,
    pulumi.Output<String>? description,
  }) :
      baselineItems = pulumi.Input.asOptionalInput<List<BaselineBaselineItem>>(baselineItems),
      baselineName = pulumi.Input.asOptionalInput<String>(baselineName),
      description = pulumi.Input.asOptionalInput<String>(description);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineItems': ?pulumi.Input.mapOptionalInputValue<List<BaselineBaselineItem>, List<Map<String, dynamic>>>(baselineItems, (value) => pulumi.Input.encodeList<BaselineBaselineItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baselineName': ?baselineName,
      'description': ?description,
    };
  }

  factory BaselineState.fromMap(Map<String, dynamic> map) {
    return BaselineState(
      baselineItems: map['baselineItems'] == null ? null : pulumi.Output.create<List<BaselineBaselineItem>>(pulumi.Input.decodeList<BaselineBaselineItem>(map['baselineItems'], (value) => BaselineBaselineItem.fromMap((value as Map).cast<String, dynamic>()))),
      baselineName: map['baselineName'] == null ? null : pulumi.Output.create<String>(map['baselineName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
    );
  }
}

