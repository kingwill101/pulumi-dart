// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_portfolios_portfolio.dart';

/// Result data returned by getPortfolios.
class GetPortfoliosResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Portfolio IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Portfolios.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// A list of Portfolio Entries. Each element contains the following attributes:
  final List<GetPortfoliosPortfolio> portfolios;
  final String? productId;
  final String? scope;
  final String? sortBy;
  final String? sortOrder;

  /// Creates a new [GetPortfoliosResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Portfolio IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Portfolios.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [portfolios] A list of Portfolio Entries. Each element contains the following attributes:
  /// [productId] Optional.
  /// [scope] Optional.
  /// [sortBy] Optional.
  /// [sortOrder] Optional.
  GetPortfoliosResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.portfolios,
    this.productId,
    this.scope,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'portfolios': pulumi.Input.encodeList<GetPortfoliosPortfolio, Map<String, dynamic>>(portfolios, (value) => value.toMap()),
      'productId': ?productId,
      'scope': ?scope,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetPortfoliosResult.fromMap(Map<String, dynamic> map) {
    return GetPortfoliosResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      portfolios: pulumi.Input.decodeList<GetPortfoliosPortfolio>(map['portfolios']!, (value) => GetPortfoliosPortfolio.fromMap((value as Map).cast<String, dynamic>())),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

