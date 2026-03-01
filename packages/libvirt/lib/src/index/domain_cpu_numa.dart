// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_cell.dart';
import 'domain_cpu_numa_interconnects.dart';

class DomainCpuNuma {
  /// Defines specific CPU NUMA cell properties, allowing for fine-tuning of resources.
  final List<DomainCpuNumaCell>? cells;
  /// Defines the interconnects between NUMA nodes, configuring how they communicate.
  final DomainCpuNumaInterconnects? interconnects;

  /// Creates a new [DomainCpuNuma].
  /// [cells] Defines specific CPU NUMA cell properties, allowing for fine-tuning of resources.
  /// [interconnects] Defines the interconnects between NUMA nodes, configuring how they communicate.
  DomainCpuNuma({
    this.cells,
    this.interconnects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?cells == null ? null : pulumi.Input.encodeList<DomainCpuNumaCell, Map<String, dynamic>>(cells!, (value) => value.toMap()),
      'interconnects': ?interconnects == null ? null : interconnects!.toMap(),
    };
  }

  factory DomainCpuNuma.fromMap(Map<String, dynamic> map) {
    return DomainCpuNuma(
      cells: map['cells'] == null ? null : pulumi.Input.decodeList<DomainCpuNumaCell>(map['cells'], (value) => DomainCpuNumaCell.fromMap((value as Map).cast<String, dynamic>())),
      interconnects: map['interconnects'] == null ? null : DomainCpuNumaInterconnects.fromMap((map['interconnects'] as Map).cast<String, dynamic>()),
    );
  }
}

