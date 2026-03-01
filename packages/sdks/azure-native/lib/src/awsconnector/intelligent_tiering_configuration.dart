// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter.dart';
import 'tiering.dart';

/// Definition of IntelligentTieringConfiguration
class IntelligentTieringConfiguration {
  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  final String? id;
  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  final String? prefix;
  /// Specifies the status of the configuration.
  final String? status;
  /// A container for a key-value pair.
  final List<TagFilter>? tagFilters;
  /// Specifies a list of S3 Intelligent-Tiering storage class tiers in the configuration. At least one tier must be defined in the list. At most, you can specify two tiers in the list, one for each available AccessTier: ``ARCHIVE_ACCESS`` and ``DEEP_ARCHIVE_ACCESS``.  You only need Intelligent Tiering Configuration enabled on a bucket if you want to automatically move objects stored in the Intelligent-Tiering storage class to Archive Access or Deep Archive Access tiers.
  final List<Tiering>? tierings;

  /// Creates a new [IntelligentTieringConfiguration].
  /// [id] The ID used to identify the S3 Intelligent-Tiering configuration.
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.
  /// [status] Specifies the status of the configuration.
  /// [tagFilters] A container for a key-value pair.
  /// [tierings] Specifies a list of S3 Intelligent-Tiering storage class tiers in the configuration. At least one tier must be defined in the list. At most, you can specify two tiers in the list, one for each available AccessTier: ``ARCHIVE_ACCESS`` and ``DEEP_ARCHIVE_ACCESS``.  You only need Intelligent Tiering Configuration enabled on a bucket if you want to automatically move objects stored in the Intelligent-Tiering storage class to Archive Access or Deep Archive Access tiers.
  IntelligentTieringConfiguration({
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
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
      'tierings': ?tierings == null ? null : pulumi.Input.encodeList<Tiering, Map<String, dynamic>>(tierings!, (value) => value.toMap()),
    };
  }

  factory IntelligentTieringConfiguration.fromMap(Map<String, dynamic> map) {
    return IntelligentTieringConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<TagFilter>(map['tagFilters'], (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>())),
      tierings: map['tierings'] == null ? null : pulumi.Input.decodeList<Tiering>(map['tierings'], (value) => Tiering.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

