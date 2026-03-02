// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_baseline_item.dart';

/// {@template pulumi_governance_baseline_baseline_args_doc}
/// The set of arguments for Baseline.
/// {@endtemplate}
/// {@macro pulumi_governance_baseline_baseline_args_doc}
class BaselineArgs {
  /// List of baseline items.
  ///
  /// You can invoke [ListAccountFactoryBaselineItems](https://next.api.aliyun.com/document/governance/2021-01-20/ListAccountFactoryBaselineItems) to get a list of account factory baseline items supported by the Cloud Governance Center. See `baseline_items` below.
  final pulumi.Input<List<BaselineBaselineItem>>? baselineItems;
  /// Baseline Name.
  final pulumi.Input<String>? baselineName;
  /// Baseline Description.
  final pulumi.Input<String>? description;

  /// Creates a new [BaselineArgs].
  /// [baselineItems] List of baseline items.
  /// [baselineName] Baseline Name.
  /// [description] Baseline Description.
  BaselineArgs({
    this.baselineItems,
    this.baselineName,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineItems': ?pulumi.Input.mapOptionalInputValue<List<BaselineBaselineItem>, List<Map<String, dynamic>>>(baselineItems, (value) => pulumi.Input.encodeList<BaselineBaselineItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baselineName': ?baselineName,
      'description': ?description,
    };
  }

  factory BaselineArgs.fromMap(Map<String, dynamic> map) {
    return BaselineArgs(
      baselineItems: map['baselineItems'] == null ? null : (pulumi.Input.decodeList<BaselineBaselineItem>(map['baselineItems']!, (value) => BaselineBaselineItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      baselineName: map['baselineName'] == null ? null : (map['baselineName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
    );
  }
}

