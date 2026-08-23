// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'process_name_filter.dart';

/// DependencyProcessFilter model
class DependencyProcessFilter {
  /// Process name filter
  final pulumi.Input<ProcessNameFilter>? processNameFilter;

  /// Creates a new [DependencyProcessFilter].
  /// [processNameFilter] Process name filter
  const DependencyProcessFilter({
    this.processNameFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processNameFilter': ?pulumi.Input.mapOptionalInputValue<ProcessNameFilter, Map<String, dynamic>>(processNameFilter, (value) => value.toMap()),
    };
  }

  factory DependencyProcessFilter.fromMap(Map<String, dynamic> map) {
    return DependencyProcessFilter(
      processNameFilter: (() { final guardedValue = map['processNameFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProcessNameFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
