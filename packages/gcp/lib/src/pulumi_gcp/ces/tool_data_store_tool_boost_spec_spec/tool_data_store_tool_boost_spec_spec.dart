// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tool_data_store_tool_boost_spec_spec_condition_boost_spec/tool_data_store_tool_boost_spec_spec_condition_boost_spec.dart';

class ToolDataStoreToolBoostSpecSpec {
  /// A list of boosting specifications.
  /// Structure is documented below.
  final List<ToolDataStoreToolBoostSpecSpecConditionBoostSpec>
      conditionBoostSpecs;

  ToolDataStoreToolBoostSpecSpec({
    required this.conditionBoostSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionBoostSpecs'] = pulumi.Input.encodeList<
        ToolDataStoreToolBoostSpecSpecConditionBoostSpec,
        Map<String, dynamic>>(conditionBoostSpecs, (value) => value.toMap());
    return map;
  }

  factory ToolDataStoreToolBoostSpecSpec.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolBoostSpecSpec(
      conditionBoostSpecs: pulumi.Input.decodeList<
              ToolDataStoreToolBoostSpecSpecConditionBoostSpec>(
          map['conditionBoostSpecs'],
          (value) => ToolDataStoreToolBoostSpecSpecConditionBoostSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
