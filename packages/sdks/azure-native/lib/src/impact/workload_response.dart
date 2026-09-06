// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the impacted workload
class WorkloadResponse {
  /// the scenario for the workload
  final pulumi.Input<String?>? context;
  /// Tool used to interact with Azure. SDK, AzPortal, etc.., Other
  final pulumi.Input<String?>? toolset;

  /// Creates a new [WorkloadResponse].
  /// [context] the scenario for the workload
  /// [toolset] Tool used to interact with Azure. SDK, AzPortal, etc.., Other
  const WorkloadResponse({
    this.context,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'toolset': ?toolset,
    };
  }

  factory WorkloadResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadResponse(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolset: (() { final guardedValue = map['toolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
