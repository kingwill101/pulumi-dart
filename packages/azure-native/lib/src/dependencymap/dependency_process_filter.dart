// ignore_for_file: unused_element, unnecessary_cast

import 'process_name_filter.dart';

/// DependencyProcessFilter model
class DependencyProcessFilter {
  /// Process name filter
  final ProcessNameFilter? processNameFilter;

  /// Creates a new [DependencyProcessFilter].
  /// [processNameFilter] Process name filter
  DependencyProcessFilter({
    this.processNameFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processNameFilter': ?processNameFilter == null ? null : processNameFilter!.toMap(),
    };
  }

  factory DependencyProcessFilter.fromMap(Map<String, dynamic> map) {
    return DependencyProcessFilter(
      processNameFilter: map['processNameFilter'] == null ? null : ProcessNameFilter.fromMap((map['processNameFilter'] as Map).cast<String, dynamic>()),
    );
  }
}

