// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// destination address
class DestinationAddrResponse {
  /// special value 'any'
  final pulumi.Input<List<String>>? cidrs;
  /// list of countries
  final pulumi.Input<List<String>>? countries;
  /// list of feeds
  final pulumi.Input<List<String>>? feeds;
  /// fqdn list
  final pulumi.Input<List<String>>? fqdnLists;
  /// prefix list
  final pulumi.Input<List<String>>? prefixLists;

  /// Creates a new [DestinationAddrResponse].
  /// [cidrs] special value 'any'
  /// [countries] list of countries
  /// [feeds] list of feeds
  /// [fqdnLists] fqdn list
  /// [prefixLists] prefix list
  DestinationAddrResponse({
    this.cidrs,
    this.countries,
    this.feeds,
    this.fqdnLists,
    this.prefixLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'countries': ?countries,
      'feeds': ?feeds,
      'fqdnLists': ?fqdnLists,
      'prefixLists': ?prefixLists,
    };
  }

  factory DestinationAddrResponse.fromMap(Map<String, dynamic> map) {
    return DestinationAddrResponse(
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      countries: (() { final guardedValue = map['countries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      feeds: (() { final guardedValue = map['feeds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fqdnLists: (() { final guardedValue = map['fqdnLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefixLists: (() { final guardedValue = map['prefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

