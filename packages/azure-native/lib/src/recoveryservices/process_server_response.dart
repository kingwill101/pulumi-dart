// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'mobility_service_update_response.dart';
import 'version_details_response.dart';

/// Details of the Process Server.
class ProcessServerResponse {
  /// Agent expiry date.
  final String? agentExpiryDate;
  /// The version of the scout component on the server.
  final String? agentVersion;
  /// The agent version details.
  final VersionDetailsResponse? agentVersionDetails;
  /// The available memory.
  final double? availableMemoryInBytes;
  /// The available space.
  final double? availableSpaceInBytes;
  /// The percentage of the CPU load.
  final String? cpuLoad;
  /// The CPU load status.
  final String? cpuLoadStatus;
  /// The Process Server's friendly name.
  final String? friendlyName;
  /// The health of Process Server.
  final String health;
  /// Health errors.
  final List<HealthErrorResponse>? healthErrors;
  /// The agent generated Id.
  final String? hostId;
  /// The Process Server Id.
  final String? id;
  /// The IP address of the server.
  final String? ipAddress;
  /// The last heartbeat received from the server.
  final String? lastHeartbeat;
  /// The servers configured with this PS.
  final String? machineCount;
  /// The MARS communication status.
  final String marsCommunicationStatus;
  /// The MARS registration status.
  final String marsRegistrationStatus;
  /// The memory usage status.
  final String? memoryUsageStatus;
  /// The list of the mobility service updates available on the Process Server.
  final List<MobilityServiceUpdateResponse>? mobilityServiceUpdates;
  /// The OS type of the server.
  final String? osType;
  /// OS Version of the process server. Note: This will get populated if user has CS version greater than 9.12.0.0.
  final String? osVersion;
  /// The PS service status.
  final String? psServiceStatus;
  /// The process server stats refresh time.
  final String psStatsRefreshTime;
  /// The number of replication pairs configured in this PS.
  final String? replicationPairCount;
  /// The space usage status.
  final String? spaceUsageStatus;
  /// The PS SSL cert expiry date.
  final String? sslCertExpiryDate;
  /// CS SSL cert expiry date.
  final int? sslCertExpiryRemainingDays;
  /// The percentage of the system load.
  final String? systemLoad;
  /// The system load status.
  final String? systemLoadStatus;
  /// The throughput in bytes.
  final double throughputInBytes;
  /// The throughput in MBps.
  final double throughputInMBps;
  /// The throughput status.
  final String throughputStatus;
  /// The uploading pending data in bytes.
  final double throughputUploadPendingDataInBytes;
  /// The total memory.
  final double? totalMemoryInBytes;
  /// The total space.
  final double? totalSpaceInBytes;
  /// Version status.
  final String? versionStatus;

  /// Creates a new [ProcessServerResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The version of the scout component on the server.
  /// [agentVersionDetails] The agent version details.
  /// [availableMemoryInBytes] The available memory.
  /// [availableSpaceInBytes] The available space.
  /// [cpuLoad] The percentage of the CPU load.
  /// [cpuLoadStatus] The CPU load status.
  /// [friendlyName] The Process Server's friendly name.
  /// [health] The health of Process Server.
  /// [healthErrors] Health errors.
  /// [hostId] The agent generated Id.
  /// [id] The Process Server Id.
  /// [ipAddress] The IP address of the server.
  /// [lastHeartbeat] The last heartbeat received from the server.
  /// [machineCount] The servers configured with this PS.
  /// [marsCommunicationStatus] The MARS communication status.
  /// [marsRegistrationStatus] The MARS registration status.
  /// [memoryUsageStatus] The memory usage status.
  /// [mobilityServiceUpdates] The list of the mobility service updates available on the Process Server.
  /// [osType] The OS type of the server.
  /// [osVersion] OS Version of the process server. Note: This will get populated if user has CS version greater than 9.12.0.0.
  /// [psServiceStatus] The PS service status.
  /// [psStatsRefreshTime] The process server stats refresh time.
  /// [replicationPairCount] The number of replication pairs configured in this PS.
  /// [spaceUsageStatus] The space usage status.
  /// [sslCertExpiryDate] The PS SSL cert expiry date.
  /// [sslCertExpiryRemainingDays] CS SSL cert expiry date.
  /// [systemLoad] The percentage of the system load.
  /// [systemLoadStatus] The system load status.
  /// [throughputInBytes] The throughput in bytes.
  /// [throughputInMBps] The throughput in MBps.
  /// [throughputStatus] The throughput status.
  /// [throughputUploadPendingDataInBytes] The uploading pending data in bytes.
  /// [totalMemoryInBytes] The total memory.
  /// [totalSpaceInBytes] The total space.
  /// [versionStatus] Version status.
  ProcessServerResponse({
    this.agentExpiryDate,
    this.agentVersion,
    this.agentVersionDetails,
    this.availableMemoryInBytes,
    this.availableSpaceInBytes,
    this.cpuLoad,
    this.cpuLoadStatus,
    this.friendlyName,
    required this.health,
    this.healthErrors,
    this.hostId,
    this.id,
    this.ipAddress,
    this.lastHeartbeat,
    this.machineCount,
    required this.marsCommunicationStatus,
    required this.marsRegistrationStatus,
    this.memoryUsageStatus,
    this.mobilityServiceUpdates,
    this.osType,
    this.osVersion,
    this.psServiceStatus,
    required this.psStatsRefreshTime,
    this.replicationPairCount,
    this.spaceUsageStatus,
    this.sslCertExpiryDate,
    this.sslCertExpiryRemainingDays,
    this.systemLoad,
    this.systemLoadStatus,
    required this.throughputInBytes,
    required this.throughputInMBps,
    required this.throughputStatus,
    required this.throughputUploadPendingDataInBytes,
    this.totalMemoryInBytes,
    this.totalSpaceInBytes,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'agentVersionDetails': ?agentVersionDetails == null ? null : agentVersionDetails!.toMap(),
      'availableMemoryInBytes': ?availableMemoryInBytes,
      'availableSpaceInBytes': ?availableSpaceInBytes,
      'cpuLoad': ?cpuLoad,
      'cpuLoadStatus': ?cpuLoadStatus,
      'friendlyName': ?friendlyName,
      'health': health,
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'hostId': ?hostId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'machineCount': ?machineCount,
      'marsCommunicationStatus': marsCommunicationStatus,
      'marsRegistrationStatus': marsRegistrationStatus,
      'memoryUsageStatus': ?memoryUsageStatus,
      'mobilityServiceUpdates': ?mobilityServiceUpdates == null ? null : pulumi.Input.encodeList<MobilityServiceUpdateResponse, Map<String, dynamic>>(mobilityServiceUpdates!, (value) => value.toMap()),
      'osType': ?osType,
      'osVersion': ?osVersion,
      'psServiceStatus': ?psServiceStatus,
      'psStatsRefreshTime': psStatsRefreshTime,
      'replicationPairCount': ?replicationPairCount,
      'spaceUsageStatus': ?spaceUsageStatus,
      'sslCertExpiryDate': ?sslCertExpiryDate,
      'sslCertExpiryRemainingDays': ?sslCertExpiryRemainingDays,
      'systemLoad': ?systemLoad,
      'systemLoadStatus': ?systemLoadStatus,
      'throughputInBytes': throughputInBytes,
      'throughputInMBps': throughputInMBps,
      'throughputStatus': throughputStatus,
      'throughputUploadPendingDataInBytes': throughputUploadPendingDataInBytes,
      'totalMemoryInBytes': ?totalMemoryInBytes,
      'totalSpaceInBytes': ?totalSpaceInBytes,
      'versionStatus': ?versionStatus,
    };
  }

  factory ProcessServerResponse.fromMap(Map<String, dynamic> map) {
    return ProcessServerResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : map['agentExpiryDate'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      agentVersionDetails: map['agentVersionDetails'] == null ? null : VersionDetailsResponse.fromMap((map['agentVersionDetails'] as Map).cast<String, dynamic>()),
      availableMemoryInBytes: map['availableMemoryInBytes'] == null ? null : map['availableMemoryInBytes'] as double,
      availableSpaceInBytes: map['availableSpaceInBytes'] == null ? null : map['availableSpaceInBytes'] as double,
      cpuLoad: map['cpuLoad'] == null ? null : map['cpuLoad'] as String,
      cpuLoadStatus: map['cpuLoadStatus'] == null ? null : map['cpuLoadStatus'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      health: map['health'] as String,
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      machineCount: map['machineCount'] == null ? null : map['machineCount'] as String,
      marsCommunicationStatus: map['marsCommunicationStatus'] as String,
      marsRegistrationStatus: map['marsRegistrationStatus'] as String,
      memoryUsageStatus: map['memoryUsageStatus'] == null ? null : map['memoryUsageStatus'] as String,
      mobilityServiceUpdates: map['mobilityServiceUpdates'] == null ? null : pulumi.Input.decodeList<MobilityServiceUpdateResponse>(map['mobilityServiceUpdates'], (value) => MobilityServiceUpdateResponse.fromMap((value as Map).cast<String, dynamic>())),
      osType: map['osType'] == null ? null : map['osType'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      psServiceStatus: map['psServiceStatus'] == null ? null : map['psServiceStatus'] as String,
      psStatsRefreshTime: map['psStatsRefreshTime'] as String,
      replicationPairCount: map['replicationPairCount'] == null ? null : map['replicationPairCount'] as String,
      spaceUsageStatus: map['spaceUsageStatus'] == null ? null : map['spaceUsageStatus'] as String,
      sslCertExpiryDate: map['sslCertExpiryDate'] == null ? null : map['sslCertExpiryDate'] as String,
      sslCertExpiryRemainingDays: map['sslCertExpiryRemainingDays'] == null ? null : map['sslCertExpiryRemainingDays'] as int,
      systemLoad: map['systemLoad'] == null ? null : map['systemLoad'] as String,
      systemLoadStatus: map['systemLoadStatus'] == null ? null : map['systemLoadStatus'] as String,
      throughputInBytes: map['throughputInBytes'] as double,
      throughputInMBps: map['throughputInMBps'] as double,
      throughputStatus: map['throughputStatus'] as String,
      throughputUploadPendingDataInBytes: map['throughputUploadPendingDataInBytes'] as double,
      totalMemoryInBytes: map['totalMemoryInBytes'] == null ? null : map['totalMemoryInBytes'] as double,
      totalSpaceInBytes: map['totalSpaceInBytes'] == null ? null : map['totalSpaceInBytes'] as double,
      versionStatus: map['versionStatus'] == null ? null : map['versionStatus'] as String,
    );
  }
}

