// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter.dart';
import 'packet_capture_storage_location.dart';

/// {@template pulumi_compute_packet_capture_packet_capture_args_doc}
/// The set of arguments for PacketCapture.
/// {@endtemplate}
/// {@macro pulumi_compute_packet_capture_packet_capture_args_doc}
class PacketCaptureArgs {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<PacketCaptureFilter>>? filters;
  /// The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumBytesPerPacket;
  /// Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumBytesPerSession;
  /// The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumCaptureDurationInSeconds;
  /// The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkWatcherId;
  /// A `storage_location` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PacketCaptureStorageLocation> storageLocation;
  /// The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [PacketCaptureArgs].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storage_location` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  PacketCaptureArgs({
    List<PacketCaptureFilter>? filters,
    int? maximumBytesPerPacket,
    int? maximumBytesPerSession,
    int? maximumCaptureDurationInSeconds,
    String? name,
    required String networkWatcherId,
    required PacketCaptureStorageLocation storageLocation,
    required String virtualMachineId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<PacketCaptureFilter>>(filters),
      maximumBytesPerPacket = pulumi.Input.asOptionalInput<int>(maximumBytesPerPacket),
      maximumBytesPerSession = pulumi.Input.asOptionalInput<int>(maximumBytesPerSession),
      maximumCaptureDurationInSeconds = pulumi.Input.asOptionalInput<int>(maximumCaptureDurationInSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkWatcherId = pulumi.Input.asInput<String>(networkWatcherId),
      storageLocation = pulumi.Input.asInput<PacketCaptureStorageLocation>(storageLocation),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<PacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<PacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumBytesPerPacket': ?maximumBytesPerPacket,
      'maximumBytesPerSession': ?maximumBytesPerSession,
      'maximumCaptureDurationInSeconds': ?maximumCaptureDurationInSeconds,
      'name': ?name,
      'networkWatcherId': networkWatcherId,
      'storageLocation': pulumi.Input.mapInputValue<PacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'virtualMachineId': virtualMachineId,
    };
  }

  factory PacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return PacketCaptureArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<PacketCaptureFilter>(map['filters'], (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())),
      maximumBytesPerPacket: map['maximumBytesPerPacket'] == null ? null : map['maximumBytesPerPacket'] as int,
      maximumBytesPerSession: map['maximumBytesPerSession'] == null ? null : map['maximumBytesPerSession'] as int,
      maximumCaptureDurationInSeconds: map['maximumCaptureDurationInSeconds'] == null ? null : map['maximumCaptureDurationInSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      networkWatcherId: map['networkWatcherId'] as String,
      storageLocation: PacketCaptureStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>()),
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

