enum ListingCategoriesItem {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  categoryOthers("CATEGORY_OTHERS"),
  categoryAdvertisingAndMarketing("CATEGORY_ADVERTISING_AND_MARKETING"),
  categoryCommerce("CATEGORY_COMMERCE"),
  categoryClimateAndEnvironment("CATEGORY_CLIMATE_AND_ENVIRONMENT"),
  categoryDemographics("CATEGORY_DEMOGRAPHICS"),
  categoryEconomics("CATEGORY_ECONOMICS"),
  categoryEducation("CATEGORY_EDUCATION"),
  categoryEnergy("CATEGORY_ENERGY"),
  categoryFinancial("CATEGORY_FINANCIAL"),
  categoryGaming("CATEGORY_GAMING"),
  categoryGeospatial("CATEGORY_GEOSPATIAL"),
  categoryHealthcareAndLifeScience("CATEGORY_HEALTHCARE_AND_LIFE_SCIENCE"),
  categoryMedia("CATEGORY_MEDIA"),
  categoryPublicSector("CATEGORY_PUBLIC_SECTOR"),
  categoryRetail("CATEGORY_RETAIL"),
  categorySports("CATEGORY_SPORTS"),
  categoryScienceAndResearch("CATEGORY_SCIENCE_AND_RESEARCH"),
  categoryTransportationAndLogistics("CATEGORY_TRANSPORTATION_AND_LOGISTICS"),
  categoryTravelAndTourism("CATEGORY_TRAVEL_AND_TOURISM");

  const ListingCategoriesItem(this.value);
  final String value;

  static ListingCategoriesItem fromValue(String value) {
    for (final item in ListingCategoriesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ListingCategoriesItem value: $value');
  }
}

