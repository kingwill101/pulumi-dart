// ignore_for_file: unused_element, unnecessary_cast

class ListingCommercialInfoCloudMarketplace {
  /// (Output)
  /// Commercial state of the Marketplace Data Product.
  /// Possible values: COMMERCIAL_STATE_UNSPECIFIED, ONBOARDING, ACTIVE
  final String? commercialState;

  /// (Output)
  /// Resource name of the commercial service associated with the Marketplace Data Product. e.g. example.com
  final String? service;

  ListingCommercialInfoCloudMarketplace({
    this.commercialState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commercialStateValue = commercialState;
    if (commercialStateValue != null) {
      map['commercialState'] = commercialStateValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory ListingCommercialInfoCloudMarketplace.fromMap(
      Map<String, dynamic> map) {
    return ListingCommercialInfoCloudMarketplace(
      commercialState: map['commercialState'] == null
          ? null
          : map['commercialState'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
