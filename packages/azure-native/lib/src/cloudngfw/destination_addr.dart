// ignore_for_file: unused_element, unnecessary_cast


/// destination address
class DestinationAddr {
  /// special value 'any'
  final List<String>? cidrs;
  /// list of countries
  final List<String>? countries;
  /// list of feeds
  final List<String>? feeds;
  /// fqdn list
  final List<String>? fqdnLists;
  /// prefix list
  final List<String>? prefixLists;

  /// Creates a new [DestinationAddr].
  /// [cidrs] special value 'any'
  /// [countries] list of countries
  /// [feeds] list of feeds
  /// [fqdnLists] fqdn list
  /// [prefixLists] prefix list
  DestinationAddr({
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

  factory DestinationAddr.fromMap(Map<String, dynamic> map) {
    return DestinationAddr(
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      countries: map['countries'] == null ? null : (map['countries'] as List).cast<String>(),
      feeds: map['feeds'] == null ? null : (map['feeds'] as List).cast<String>(),
      fqdnLists: map['fqdnLists'] == null ? null : (map['fqdnLists'] as List).cast<String>(),
      prefixLists: map['prefixLists'] == null ? null : (map['prefixLists'] as List).cast<String>(),
    );
  }
}

