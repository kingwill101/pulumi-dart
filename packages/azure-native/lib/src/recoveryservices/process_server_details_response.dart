// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Process server details.
class ProcessServerDetailsResponse {
  /// The available memory.
  final double availableMemoryInBytes;
  /// The available disk space.
  final double availableSpaceInBytes;
  /// The process server Bios Id.
  final String biosId;
  /// The disk usage status.
  final String diskUsageStatus;
  /// The fabric object Id.
  final String fabricObjectId;
  /// The process server Fqdn.
  final String fqdn;
  /// The free disk space percentage.
  final double freeSpacePercentage;
  /// The health of the process server.
  final String health;
  /// The health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The historic health of the process server based on the health in last 24 hours.
  final String historicHealth;
  /// The process server Id.
  final String id;
  /// The list of IP addresses for communicating with the RCM component.
  final List<String> ipAddresses;
  /// The last heartbeat received from the process server.
  final String lastHeartbeatUtc;
  /// The memory usage percentage.
  final double memoryUsagePercentage;
  /// The memory usage status.
  final String memoryUsageStatus;
  /// The process server name.
  final String name;
  /// The processor usage percentage.
  final double processorUsagePercentage;
  /// The processor usage status.
  final String processorUsageStatus;
  /// The protected item count.
  final int protectedItemCount;
  /// The system load.
  final double systemLoad;
  /// The system load status.
  final String systemLoadStatus;
  /// The throughput in bytes.
  final double throughputInBytes;
  /// The throughput status.
  final String throughputStatus;
  /// The uploading pending data in bytes.
  final double throughputUploadPendingDataInBytes;
  /// The total memory.
  final double totalMemoryInBytes;
  /// The total disk space.
  final double totalSpaceInBytes;
  /// The used memory.
  final double usedMemoryInBytes;
  /// The used disk space.
  final double usedSpaceInBytes;
  /// The version.
  final String version;

  /// Creates a new [ProcessServerDetailsResponse].
  /// [availableMemoryInBytes] The available memory.
  /// [availableSpaceInBytes] The available disk space.
  /// [biosId] The process server Bios Id.
  /// [diskUsageStatus] The disk usage status.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The process server Fqdn.
  /// [freeSpacePercentage] The free disk space percentage.
  /// [health] The health of the process server.
  /// [healthErrors] The health errors.
  /// [historicHealth] The historic health of the process server based on the health in last 24 hours.
  /// [id] The process server Id.
  /// [ipAddresses] The list of IP addresses for communicating with the RCM component.
  /// [lastHeartbeatUtc] The last heartbeat received from the process server.
  /// [memoryUsagePercentage] The memory usage percentage.
  /// [memoryUsageStatus] The memory usage status.
  /// [name] The process server name.
  /// [processorUsagePercentage] The processor usage percentage.
  /// [processorUsageStatus] The processor usage status.
  /// [protectedItemCount] The protected item count.
  /// [systemLoad] The system load.
  /// [systemLoadStatus] The system load status.
  /// [throughputInBytes] The throughput in bytes.
  /// [throughputStatus] The throughput status.
  /// [throughputUploadPendingDataInBytes] The uploading pending data in bytes.
  /// [totalMemoryInBytes] The total memory.
  /// [totalSpaceInBytes] The total disk space.
  /// [usedMemoryInBytes] The used memory.
  /// [usedSpaceInBytes] The used disk space.
  /// [version] The version.
  ProcessServerDetailsResponse({
    required this.availableMemoryInBytes,
    required this.availableSpaceInBytes,
    required this.biosId,
    required this.diskUsageStatus,
    required this.fabricObjectId,
    required this.fqdn,
    required this.freeSpacePercentage,
    required this.health,
    required this.healthErrors,
    required this.historicHealth,
    required this.id,
    required this.ipAddresses,
    required this.lastHeartbeatUtc,
    required this.memoryUsagePercentage,
    required this.memoryUsageStatus,
    required this.name,
    required this.processorUsagePercentage,
    required this.processorUsageStatus,
    required this.protectedItemCount,
    required this.systemLoad,
    required this.systemLoadStatus,
    required this.throughputInBytes,
    required this.throughputStatus,
    required this.throughputUploadPendingDataInBytes,
    required this.totalMemoryInBytes,
    required this.totalSpaceInBytes,
    required this.usedMemoryInBytes,
    required this.usedSpaceInBytes,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemoryInBytes': availableMemoryInBytes,
      'availableSpaceInBytes': availableSpaceInBytes,
      'biosId': biosId,
      'diskUsageStatus': diskUsageStatus,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'freeSpacePercentage': freeSpacePercentage,
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'historicHealth': historicHealth,
      'id': id,
      'ipAddresses': ipAddresses,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'memoryUsagePercentage': memoryUsagePercentage,
      'memoryUsageStatus': memoryUsageStatus,
      'name': name,
      'processorUsagePercentage': processorUsagePercentage,
      'processorUsageStatus': processorUsageStatus,
      'protectedItemCount': protectedItemCount,
      'systemLoad': systemLoad,
      'systemLoadStatus': systemLoadStatus,
      'throughputInBytes': throughputInBytes,
      'throughputStatus': throughputStatus,
      'throughputUploadPendingDataInBytes': throughputUploadPendingDataInBytes,
      'totalMemoryInBytes': totalMemoryInBytes,
      'totalSpaceInBytes': totalSpaceInBytes,
      'usedMemoryInBytes': usedMemoryInBytes,
      'usedSpaceInBytes': usedSpaceInBytes,
      'version': version,
    };
  }

  factory ProcessServerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProcessServerDetailsResponse(
      availableMemoryInBytes: map['availableMemoryInBytes'] as double,
      availableSpaceInBytes: map['availableSpaceInBytes'] as double,
      biosId: map['biosId'] as String,
      diskUsageStatus: map['diskUsageStatus'] as String,
      fabricObjectId: map['fabricObjectId'] as String,
      fqdn: map['fqdn'] as String,
      freeSpacePercentage: map['freeSpacePercentage'] as double,
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      historicHealth: map['historicHealth'] as String,
      id: map['id'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      memoryUsagePercentage: map['memoryUsagePercentage'] as double,
      memoryUsageStatus: map['memoryUsageStatus'] as String,
      name: map['name'] as String,
      processorUsagePercentage: map['processorUsagePercentage'] as double,
      processorUsageStatus: map['processorUsageStatus'] as String,
      protectedItemCount: map['protectedItemCount'] as int,
      systemLoad: map['systemLoad'] as double,
      systemLoadStatus: map['systemLoadStatus'] as String,
      throughputInBytes: map['throughputInBytes'] as double,
      throughputStatus: map['throughputStatus'] as String,
      throughputUploadPendingDataInBytes: map['throughputUploadPendingDataInBytes'] as double,
      totalMemoryInBytes: map['totalMemoryInBytes'] as double,
      totalSpaceInBytes: map['totalSpaceInBytes'] as double,
      usedMemoryInBytes: map['usedMemoryInBytes'] as double,
      usedSpaceInBytes: map['usedSpaceInBytes'] as double,
      version: map['version'] as String,
    );
  }
}

