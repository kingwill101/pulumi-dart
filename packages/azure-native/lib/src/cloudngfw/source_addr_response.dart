// ignore_for_file: unused_element, unnecessary_cast


/// Address properties
class SourceAddrResponse {
  /// special value 'any'
  final List<String>? cidrs;
  /// list of countries
  final List<String>? countries;
  /// list of feeds
  final List<String>? feeds;
  /// prefix list
  final List<String>? prefixLists;

  /// Creates a new [SourceAddrResponse].
  /// [cidrs] special value 'any'
  /// [countries] list of countries
  /// [feeds] list of feeds
  /// [prefixLists] prefix list
  SourceAddrResponse({
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

  factory SourceAddrResponse.fromMap(Map<String, dynamic> map) {
    return SourceAddrResponse(
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      countries: map['countries'] == null ? null : (map['countries'] as List).cast<String>(),
      feeds: map['feeds'] == null ? null : (map['feeds'] as List).cast<String>(),
      prefixLists: map['prefixLists'] == null ? null : (map['prefixLists'] as List).cast<String>(),
    );
  }
}

