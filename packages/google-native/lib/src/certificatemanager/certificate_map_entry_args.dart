// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_entry_matcher.dart';

/// {@template pulumi_certificatemanager_v1_certificate_map_entry_args_doc}
/// The set of arguments for CertificateMapEntry.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_certificate_map_entry_args_doc}
class CertificateMapEntryArgs {
  /// Required. A user-provided name of the certificate map entry.
  final pulumi.Input<String> certificateMapEntryId;
  final pulumi.Input<String> certificateMapId;

  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  final pulumi.Input<List<String>>? certificates;

  /// One or more paragraphs of text description of a certificate map entry.
  final pulumi.Input<String>? description;

  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  final pulumi.Input<String>? hostname;

  /// Set of labels associated with a Certificate Map Entry.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A predefined matcher for particular cases, other than SNI selection.
  final pulumi.Input<CertificateMapEntryMatcher>? matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateMapEntryArgs].
  /// [certificateMapEntryId] Required. A user-provided name of the certificate map entry.
  /// [certificateMapId] Required.
  /// [certificates] A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  /// [description] One or more paragraphs of text description of a certificate map entry.
  /// [hostname] A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [location] Optional.
  /// [matcher] A predefined matcher for particular cases, other than SNI selection.
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  /// [project] Optional.
  CertificateMapEntryArgs({
    required String certificateMapEntryId,
    required String certificateMapId,
    List<String>? certificates,
    String? description,
    String? hostname,
    Map<String, String>? labels,
    String? location,
    CertificateMapEntryMatcher? matcher,
    String? name,
    String? project,
  }) : certificateMapEntryId = pulumi.Input.asInput<String>(
         certificateMapEntryId,
       ),
       certificateMapId = pulumi.Input.asInput<String>(certificateMapId),
       certificates = pulumi.Input.asOptionalInput<List<String>>(certificates),
       description = pulumi.Input.asOptionalInput<String>(description),
       hostname = pulumi.Input.asOptionalInput<String>(hostname),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       matcher = pulumi.Input.asOptionalInput<CertificateMapEntryMatcher>(
         matcher,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapEntryId': certificateMapEntryId,
      'certificateMapId': certificateMapId,
      'certificates': ?certificates,
      'description': ?description,
      'hostname': ?hostname,
      'labels': ?labels,
      'location': ?location,
      'matcher':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateMapEntryMatcher,
            String
          >(matcher, (value) => value.value),
      'name': ?name,
      'project': ?project,
    };
  }

  factory CertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapEntryArgs(
      certificateMapEntryId: map['certificateMapEntryId'] as String,
      certificateMapId: map['certificateMapId'] as String,
      certificates: map['certificates'] == null
          ? null
          : (map['certificates'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      matcher: map['matcher'] == null
          ? null
          : CertificateMapEntryMatcher.fromValue(map['matcher'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
