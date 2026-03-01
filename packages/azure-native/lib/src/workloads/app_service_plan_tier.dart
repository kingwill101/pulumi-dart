/// The App Service plan tier.
enum AppServicePlanTier {
  elasticPremium("ElasticPremium"),
  premiumV3("PremiumV3");

  const AppServicePlanTier(this.value);
  final String value;

  static AppServicePlanTier fromValue(String value) {
    for (final item in AppServicePlanTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServicePlanTier value: $value');
  }
}

