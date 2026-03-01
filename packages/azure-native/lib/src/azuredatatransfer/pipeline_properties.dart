// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber.dart';

/// Properties of pipeline
class PipelineProperties {
  /// Display name of this pipeline
  final String? displayName;
  /// The flow types allowed for this pipeline
  final List<String>? flowTypes;
  /// The policies for this pipeline
  final List<String>? policies;
  /// Remote cloud of the data to be transferred or received
  final String remoteCloud;
  /// Subscribers of this resource
  final List<Subscriber>? subscribers;

  /// Creates a new [PipelineProperties].
  /// [displayName] Display name of this pipeline
  /// [flowTypes] The flow types allowed for this pipeline
  /// [policies] The policies for this pipeline
  /// [remoteCloud] Remote cloud of the data to be transferred or received
  /// [subscribers] Subscribers of this resource
  PipelineProperties({
    this.displayName,
    this.flowTypes,
    this.policies,
    required this.remoteCloud,
    this.subscribers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'flowTypes': ?flowTypes,
      'policies': ?policies,
      'remoteCloud': remoteCloud,
      'subscribers': ?subscribers == null ? null : pulumi.Input.encodeList<Subscriber, Map<String, dynamic>>(subscribers!, (value) => value.toMap()),
    };
  }

  factory PipelineProperties.fromMap(Map<String, dynamic> map) {
    return PipelineProperties(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      flowTypes: map['flowTypes'] == null ? null : (map['flowTypes'] as List).cast<String>(),
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      remoteCloud: map['remoteCloud'] as String,
      subscribers: map['subscribers'] == null ? null : pulumi.Input.decodeList<Subscriber>(map['subscribers'], (value) => Subscriber.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

