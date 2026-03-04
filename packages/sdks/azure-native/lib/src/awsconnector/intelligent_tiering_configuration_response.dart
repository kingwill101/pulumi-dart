// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter_response.dart';
import 'tiering_response.dart';

/// Definition of IntelligentTieringConfiguration
class IntelligentTieringConfigurationResponse {
  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  final pulumi.Input<String>? id;

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String>? prefix;

  /// Specifies the status of the configuration.
  final pulumi.Input<String>? status;

  /// A container for a key-value pair.
  final pulumi.Input<List<TagFilterResponse>>? tagFilters;

  /// Specifies a list of S3 Intelligent-Tiering storage class tiers in the configuration. At least one tier must be defined in the list. At most, you can specify two tiers in the list, one for each available AccessTier: ``ARCHIVE_ACCESS`` and ``DEEP_ARCHIVE_ACCESS``.  You only need Intelligent Tiering Configuration enabled on a bucket if you want to automatically move objects stored in the Intelligent-Tiering storage class to Archive Access or Deep Archive Access tiers.
  final pulumi.Input<List<TieringResponse>>? tierings;

  /// Creates a new [IntelligentTieringConfigurationResponse].
  /// [id] The ID used to identify the S3 Intelligent-Tiering configuration.
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.
  /// [status] Specifies the status of the configuration.
  /// [tagFilters] A container for a key-value pair.
  /// [tierings] Specifies a list of S3 Intelligent-Tiering storage class tiers in the configuration. At least one tier must be defined in the list. At most, you can specify two tiers in the list, one for each available AccessTier: ``ARCHIVE_ACCESS`` and ``DEEP_ARCHIVE_ACCESS``.  You only need Intelligent Tiering Configuration enabled on a bucket if you want to automatically move objects stored in the Intelligent-Tiering storage class to Archive Access or Deep Archive Access tiers.
  IntelligentTieringConfigurationResponse({
    this.id,
    this.prefix,
    this.status,
    this.tagFilters,
    this.tierings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'prefix': ?prefix,
      'status': ?status,
      'tagFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagFilterResponse>,
            List<Map<String, dynamic>>
          >(
            tagFilters,
            (value) =>
                pulumi.Input.encodeList<
                  TagFilterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tierings':
          ?pulumi.Input.mapOptionalInputValue<
            List<TieringResponse>,
            List<Map<String, dynamic>>
          >(
            tierings,
            (value) =>
                pulumi.Input.encodeList<TieringResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory IntelligentTieringConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntelligentTieringConfigurationResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagFilters: (() {
        final guardedValue = map['tagFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagFilterResponse>(
            guardedValue,
            (value) => TagFilterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tierings: (() {
        final guardedValue = map['tierings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TieringResponse>(
            guardedValue,
            (value) =>
                TieringResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
