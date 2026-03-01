// ignore_for_file: unused_element, unnecessary_cast

import 'domain_memory_backing_memory_access.dart';
import 'domain_memory_backing_memory_allocation.dart';
import 'domain_memory_backing_memory_huge_pages.dart';
import 'domain_memory_backing_memory_source.dart';

class DomainMemoryBacking {
  /// Defines the access mode for the memory backing, which influences how memory is treated by the hypervisor.
  final DomainMemoryBackingMemoryAccess? memoryAccess;
  /// Configures the allocation properties for the memory backing of the domain, affecting its performance.
  final DomainMemoryBackingMemoryAllocation? memoryAllocation;
  /// Controls whether memory discard is enabled, allowing the hypervisor to reclaim unused memory.
  final bool? memoryDiscard;
  /// Configures the use of huge pages for memory allocation, which can improve performance by reducing page table overhead.
  final DomainMemoryBackingMemoryHugePages? memoryHugePages;
  /// Controls whether the memory backing is locked, preventing it from being swapped or moved.
  final bool? memoryLocked;
  /// Configures whether shared pages are forbidden for the domain, affecting memory sharing behaviors.
  final bool? memoryNosharepages;
  /// Specifies the source from which the memory backing is allocated, influencing its origin.
  final DomainMemoryBackingMemorySource? memorySource;

  /// Creates a new [DomainMemoryBacking].
  /// [memoryAccess] Defines the access mode for the memory backing, which influences how memory is treated by the hypervisor.
  /// [memoryAllocation] Configures the allocation properties for the memory backing of the domain, affecting its performance.
  /// [memoryDiscard] Controls whether memory discard is enabled, allowing the hypervisor to reclaim unused memory.
  /// [memoryHugePages] Configures the use of huge pages for memory allocation, which can improve performance by reducing page table overhead.
  /// [memoryLocked] Controls whether the memory backing is locked, preventing it from being swapped or moved.
  /// [memoryNosharepages] Configures whether shared pages are forbidden for the domain, affecting memory sharing behaviors.
  /// [memorySource] Specifies the source from which the memory backing is allocated, influencing its origin.
  DomainMemoryBacking({
    this.memoryAccess,
    this.memoryAllocation,
    this.memoryDiscard,
    this.memoryHugePages,
    this.memoryLocked,
    this.memoryNosharepages,
    this.memorySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryAccess': ?memoryAccess == null ? null : memoryAccess!.toMap(),
      'memoryAllocation': ?memoryAllocation == null ? null : memoryAllocation!.toMap(),
      'memoryDiscard': ?memoryDiscard,
      'memoryHugePages': ?memoryHugePages == null ? null : memoryHugePages!.toMap(),
      'memoryLocked': ?memoryLocked,
      'memoryNosharepages': ?memoryNosharepages,
      'memorySource': ?memorySource == null ? null : memorySource!.toMap(),
    };
  }

  factory DomainMemoryBacking.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBacking(
      memoryAccess: map['memoryAccess'] == null ? null : DomainMemoryBackingMemoryAccess.fromMap((map['memoryAccess'] as Map).cast<String, dynamic>()),
      memoryAllocation: map['memoryAllocation'] == null ? null : DomainMemoryBackingMemoryAllocation.fromMap((map['memoryAllocation'] as Map).cast<String, dynamic>()),
      memoryDiscard: map['memoryDiscard'] == null ? null : map['memoryDiscard'] as bool,
      memoryHugePages: map['memoryHugePages'] == null ? null : DomainMemoryBackingMemoryHugePages.fromMap((map['memoryHugePages'] as Map).cast<String, dynamic>()),
      memoryLocked: map['memoryLocked'] == null ? null : map['memoryLocked'] as bool,
      memoryNosharepages: map['memoryNosharepages'] == null ? null : map['memoryNosharepages'] as bool,
      memorySource: map['memorySource'] == null ? null : DomainMemoryBackingMemorySource.fromMap((map['memorySource'] as Map).cast<String, dynamic>()),
    );
  }
}

