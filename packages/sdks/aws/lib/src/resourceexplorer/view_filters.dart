// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ViewFilters {
  /// The string that contains the search keywords, prefixes, and operators to control the results that can be returned by a search operation. For more details, see [Search query syntax](https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html).
  final pulumi.Input<String> filterString;

  /// Creates a new [ViewFilters].
  /// [filterString] The string that contains the search keywords, prefixes, and operators to control the results that can be returned by a search operation. For more details, see [Search query syntax](https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html).
  ViewFilters({required this.filterString});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filterString': filterString};
  }

  factory ViewFilters.fromMap(Map<String, dynamic> map) {
    return ViewFilters(
      filterString: pulumi.Input.fromValue(map['filterString'] as String),
    );
  }
}
