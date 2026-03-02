// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Address properties
class SourceAddr {
  /// special value 'any'
  final pulumi.Input<List<String>>? cidrs;
  /// list of countries
  final pulumi.Input<List<String>>? countries;
  /// list of feeds
  final pulumi.Input<List<String>>? feeds;
  /// prefix list
  final pulumi.Input<List<String>>? prefixLists;

  /// Creates a new [SourceAddr].
  /// [cidrs] special value 'any'
  /// [countries] list of countries
  /// [feeds] list of feeds
  /// [prefixLists] prefix list
  SourceAddr({
    this.cidrs,
    this.countries,
    this.feeds,
    this.prefixLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'countries': ?countries,
      'feeds': ?feeds,
      'prefixLists': ?prefixLists,
    };
  }

  factory SourceAddr.fromMap(Map<String, dynamic> map) {
    return SourceAddr(
      cidrs: map['cidrs'] == null ? null : ((map['cidrs']! as List).cast<String>()).input(),
      countries: map['countries'] == null ? null : ((map['countries']! as List).cast<String>()).input(),
      feeds: map['feeds'] == null ? null : ((map['feeds']! as List).cast<String>()).input(),
      prefixLists: map['prefixLists'] == null ? null : ((map['prefixLists']! as List).cast<String>()).input(),
    );
  }
}

